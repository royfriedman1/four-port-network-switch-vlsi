# Synthesis Scripts

Three Fusion Compiler TCL scripts are provided, each representing a different optimization scenario.

## Before Running

Update the PDK path at the top of each script:

```tcl
set TECH_FILE "/data/synopsys/lib/saed32nm/ref/tech/saed32nm_1p9m.tf"
```

Also update the `ref_libs` path and the `source` line that loads the SDC:

```tcl
source /path/to/switch_4port.sdc
```

Replace with:

```tcl
source ../../constraints/switch_4port.sdc
```

## Scripts

| Script | Description |
|--------|-------------|
| `run_no_cg_with_final_opto.tcl` | No clock gating, runs `compile_fusion -to final_opto` for best timing |
| `run_no_cg_without_final_opto.tcl` | No clock gating, stops at `logic_opto` — faster compile, slightly larger area |
| `run_with_clock_gating.tcl` | Enables clock gating — best power, smallest area |

## Usage

```bash
fc_shell -f run_with_clock_gating.tcl
```
