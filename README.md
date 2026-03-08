# Four-Port Network Switch — Full VLSI Design

> SystemVerilog RTL · UVM-style Verification · Synopsys Fusion Compiler · SAED 32nm

A fully custom, synthesizable **4-port network switch** designed from RTL through gate-level verification, targeting a 32 nm standard-cell technology. The project covers the complete front-end ASIC design flow: micro-architecture, RTL coding, functional verification, logic synthesis, timing closure, and post-synthesis gate-level simulation (GLS).

---

## Table of Contents

- [Architecture](#architecture)
- [Repository Structure](#repository-structure)
- [RTL Design](#rtl-design)
- [Verification](#verification)
- [Synthesis & Results](#synthesis--results)
- [Gate-Level Simulation](#gate-level-simulation)
- [How to Run](#how-to-run)
- [Technology](#technology)

---

## Architecture

The switch accepts packets from four independent input ports and routes them to one or more target output ports. Each packet carries an 8-bit data payload, a 4-bit one-hot source field, and a 4-bit target mask that supports both unicast and broadcast.

```
                     ┌─────────────────────────────────┐
  Port 0 ──[FIFO]──► │                                 │ ──► Port 0
  Port 1 ──[FIFO]──► │   Routing Matrix (4 Arbiters)   │ ──► Port 1
  Port 2 ──[FIFO]──► │   Round-Robin per Output Port   │ ──► Port 2
  Port 3 ──[FIFO]──► │                                 │ ──► Port 3
                     └─────────────────────────────────┘
```

### Key design decisions

| Decision | Rationale |
|----------|-----------|
| Per-input FIFO (depth 4) | Decouples ingress from the arbitration fabric; absorbs back-pressure |
| Round-robin arbiter per output port | Fair, starvation-free scheduling across all four inputs |
| Target-mask packet filtering | Enables multicast with zero additional hardware |
| Separated control/datapath in arbiter | Cleaner synthesis and easier formal verification |
| Parameterized top-level | `NUM_OF_PORTS` and `DEPTH` are compile-time generics |

---

## Repository Structure

```
four-port-switch-vlsi/
├── rtl/                        # Synthesizable SystemVerilog RTL
│   ├── switch_4port.sv         # Top-level (parameterized, 4-port)
│   ├── switch_port.sv          # Input port: FIFO + packet validation + flow-ctrl
│   ├── FIFO.sv                 # Parameterized synchronous FIFO (depth=4)
│   ├── Routing.sv              # Routing matrix — instantiates one arbiter per output
│   ├── arbiter.sv              # Per-output arbiter (ctrl + datapath)
│   ├── Arbiter_control_unit.sv # Round-robin control logic with D-FF grant memory
│   ├── Arbiter_data_path.sv    # Mux tree — selects winning master's data
│   ├── Master_control_unit.sv  # Input-port flow-control (in_rdy handshake)
│   ├── d_ff.sv                 # D flip-flop primitive with sync reset & enable
│   ├── internal_if.sv          # SystemVerilog interface — internal data bus
│   ├── port_if.sv              # SystemVerilog interface — external port pins
│   └── packet_types.sv         # `packet_t` struct typedef
│
├── verification/               # Functional verification environment
│   ├── tb/
│   │   ├── switch_test.sv      # Top-level testbench
│   │   ├── debug_if.sv         # Debug interface for waveform probing
│   │   └── build.cud           # Cadence xcelium compile script
│   ├── env/
│   │   ├── agent.sv            # UVM-style agent
│   │   ├── driver.sv           # Drives randomized packets onto DUT ports
│   │   ├── monitor.sv          # Observes DUT outputs
│   │   ├── checker.sv          # Reference model + scoreboard
│   │   ├── sequencer.sv        # Sequence controller
│   │   └── component_base.sv   # Base class for all env components
│   └── pkg/
│       ├── packet_pkg.sv       # Package import wrapper
│       ├── packet_data.sv      # `packet_data` sequence item
│       └── packet_vc.sv        # Virtual sequence
│
├── synthesis/
│   ├── constraints/
│   │   └── switch_4port.sdc    # SDC: 10 ns clock, I/O delays, uncertainty
│   ├── scripts/
│   │   ├── run_no_cg_with_final_opto.tcl    # Best-timing run
│   │   ├── run_no_cg_without_final_opto.tcl # Baseline run
│   │   └── run_with_clock_gating.tcl        # Power-optimised run
│   ├── reports/                # Area · Power · Timing · Resources (all 3 runs)
│   │   ├── no_cg_with_final_opto/
│   │   ├── no_cg_without_final_opto/
│   │   └── with_clock_gating/
│   └── netlists/               # Gate-level Verilog + SDF back-annotation
│
├── gls/                        # Post-synthesis Gate-Level Simulation
│   ├── no_cg_with_final_opto/
│   ├── no_cg_without_final_opto/
│   └── with_clock_gating/
│
└── docs/
    └── Four_Port_Switch_Final_Report.pdf
```

---

## RTL Design

### Module Hierarchy

```
switch_4port  (top)
 ├── switch_port × 4            (one per input)
 │    ├── FIFO                  (depth-4 synchronous FIFO)
 │    └── Master_Control_unit   (in_rdy flow-control FSM)
 └── Routing
      └── arbiter × 4           (one per output port)
           ├── Arbiter_control_unit  (round-robin FSM + D-FF grant registers)
           └── Arbiter_data_path     (4:1 mux driven by grant select)
```

### Interfaces

| Interface | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | input | 1 | System clock |
| `rst_n` | input | 1 | Active-low synchronous reset |
| `ports[i].valid_in` | input | 1 | Incoming packet valid |
| `ports[i].source_in` | input | 4 | One-hot source ID |
| `ports[i].target_in` | input | 4 | Target mask (supports broadcast) |
| `ports[i].data_in` | input | 8 | Packet payload |
| `ports[i].valid_out` | output | 1 | Outgoing packet valid |
| `ports[i].source_out` | output | 4 | Source of forwarded packet |
| `ports[i].target_out` | output | 4 | Target of forwarded packet |
| `ports[i].data_out` | output | 8 | Forwarded payload |

### Packet Validity Rules

A packet is accepted into the input FIFO only if:
1. `source` is exactly **one-hot** (single active bit)
2. `target` is **non-zero**
3. `target` does not include the **sender's own port** (no self-routing)
4. Broadcast (`target = 4'b1111`) is a legal special case

### Arbitration

Each output port has a dedicated **round-robin arbiter**. On every clock cycle the arbiter scans the four input ports starting from the port that followed the last winner, granting access to the first valid request it finds. The grant is registered so it persists until the master's FIFO is consumed (`in_rdy` handshake).

---

## Verification

The testbench follows a **layered, UVM-inspired** architecture without the full UVM library, making it portable across tools.

```
switch_test (top)
 └── agent × 4
      ├── driver      → randomized packet stimulus
      ├── monitor     → captures DUT outputs
      └── checker     → scoreboard: expected vs. actual
```

**Coverage targets:** unicast, broadcast, back-pressure (FIFO full), simultaneous contention on same output port, all-to-one stress, reset during active traffic.

---

## Synthesis & Results

All runs used **Synopsys Fusion Compiler V-2023.12-SP3** targeting the **SAED 32nm** educational PDK.

**Timing constraints:** 10 ns clock period (100 MHz), 0.15 ns setup uncertainty, 0.5 ns input delay, 0.2 ns output delay. Worst-corner: `FUNC_Slow` (0.75 V, 125 °C).

### Summary

| Metric | No CG · No Final Opto | No CG · With Final Opto | **With Clock Gating** |
|--------|----------------------|------------------------|-----------------------|
| Total cell area (μm²) | 5,536 | 5,626 | **5,019** |
| Combinational cells | 908 | 931 | 660 |
| Sequential cells | 368 | 368 | 391 |
| Total dynamic power (mW) | — | 145 | **40.7** (-72%) |
| Cell leakage power (mW) | — | 106 | 93.1 |
| Total power (mW) | — | 251 | **134** (-47%) |
| Worst-case setup slack (ns) | — | +2.67 | **+3.82** |
| Clock period (ns) | 10 | 10 | 10 |

> Clock gating achieves a **72% reduction in dynamic power** and simultaneously improves timing slack, as the tool can leverage the reduced switching activity during optimization.

### Critical Path (No CG · With Final Opto)

```
Startpoint: SLAVE_SWITCH[2].u_arbiter / SELECT_RDY[3].u_d_ff/dout_reg[0]  (FF, clk↑)
Endpoint:   SLAVE_SWITCH[1].u_arbiter / SELECT_RDY[1].u_d_ff/dout_reg[0]  (FF, clk↑)

  dout_reg[0]/Q  ──► XNOR2X1_RVT (0.25ns) ──► NAND4X0_RVT (0.16ns)
  ──► AOI21X2_RVT (0.32ns) ──► NOR3X2_HVT (1.32ns) ──► NOR2X1_RVT (0.28ns)
  ──► OA222X1_RVT (0.20ns) ──► INVX0_HVT  (0.22ns) ──► OAI221X1_RVT (0.43ns)
  ──► AO22X1_RVT  (0.13ns) ──► OA21X2_HVT (1.34ns) ──► INVX0_HVT   (0.81ns)
  ──► AND3X1_RVT  (0.35ns) ──► MUX21X1_RVT(0.21ns) ──► dout_reg[0]/D

  Data arrival: 6.68 ns  |  Required: 9.34 ns  |  Slack: +2.67 ns  ✓
```

---

## Gate-Level Simulation

Post-synthesis GLS uses SDF back-annotation to verify timing-accurate behavior. The same UVM-style testbench is reused with the synthesized netlist substituted for the RTL.

```
gls/<run>/
├── Makefile               # One-command simulation flow
├── switch_test_GLS.sv     # GLS-specific testbench wrapper
├── switch_4port_wrapper.sv
└── build.cud              # Cadence xcelium compile + sim script
```

---

## How to Run

### RTL Simulation (Cadence Xcelium)

```bash
cd verification/tb
xrun -f build.cud
```

### Logic Synthesis (Synopsys Fusion Compiler)

```bash
cd synthesis/scripts
# Best timing (no clock gating, with final optimization):
fc_shell -f run_no_cg_with_final_opto.tcl

# Power-optimized (with clock gating):
fc_shell -f run_with_clock_gating.tcl
```

> **Note:** The synthesis scripts reference the SAED 32nm PDK at `/data/synopsys/lib/saed32nm/`. Update the `TECH_FILE` and `ref_libs` paths to match your installation.

### Gate-Level Simulation

```bash
cd gls/with_clock_gating
make
```

---

## Technology

| Item | Detail |
|------|--------|
| HDL | SystemVerilog (IEEE 1800-2017) |
| Technology node | SAED 32nm (Synopsys educational PDK) |
| Standard-cell libraries | saed32_hvt · saed32_rvt · saed32_lvt (NDMDB) |
| Synthesis tool | Synopsys Fusion Compiler V-2023.12-SP3 |
| Simulation tool | Cadence Xcelium |
| Parasitic extraction | TLUplus (Cmax/Cmin, 1P9M stack) |
| Supply voltage | 0.75 V (worst-corner) |
| Operating temperature | 125 °C (worst-corner) |

---

## Authors

Roy Friedman · Hadar Levy
Tel Aviv University — VLSI Design, Verification & Synthesis Course (2025–2026)
