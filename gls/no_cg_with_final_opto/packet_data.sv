
class packet;
	typedef enum {SINGLE, MULTICAST, BROADCAST} pkt_type_e;
	
	// Properties
	string name;                    
	//static int count = 0;          
	
	rand pkt_type_e pkt_type;
	rand bit [3:0] source;
	rand bit [3:0] target;
	rand bit [7:0] data;
	
	// Constructor based on requirements 
	function new(string name = "pkt", int port_idx = 0);
		this.name = name;
		this.source = (1 << port_idx); // Generates one-hot source 
		//count++;
	endfunction
	
	constraint c_type_dist {
		pkt_type dist { SINGLE:=40, MULTICAST:=40, BROADCAST:=20 };
	  }
	// Constraints
	constraint c_legal_target { target != 4'b0000; } 
	
	// Ensure source is one-hot (if not set by constructor)
	constraint c_legal_source { $countones(source) == 1; } 
	
	// Mandatory: No loopback for Single and Multicast
	constraint c_no_loopback {
		(pkt_type inside {SINGLE, MULTICAST}) -> (source & target) == 0;
	}
	
	constraint c_type_logic {
		(pkt_type == SINGLE)    -> $countones(target) == 1;           
		(pkt_type == MULTICAST) -> $countones(target) inside {2, 3};  
		(pkt_type == BROADCAST) -> target == 4'b1111;                
	}
	
	
	//hit all target at list one time
	
	constraint c_target_dist_single {
		(pkt_type == SINGLE) -> target dist {
		  4'b0001 := 25,
		  4'b0010 := 25,
		  4'b0100 := 25,
		  4'b1000 := 25
		};
	  }

	constraint c_mcast_size_dist {
		(pkt_type == MULTICAST) -> $countones(target) dist { 2 := 50, 3 := 50 };
	  }

	  constraint c_target_dist_mcast2 {
		(pkt_type == MULTICAST && $countones(target)==2) -> target dist {
		  4'b0011 := 1, // 0,1
		  4'b0101 := 1, // 0,2
		  4'b1001 := 1, // 0,3
		  4'b0110 := 1, // 1,2
		  4'b1010 := 1, // 1,3
		  4'b1100 := 1  // 2,3
		};
	  }

	  constraint c_target_dist_mcast3 {
		(pkt_type == MULTICAST && $countones(target)==3) -> target dist {
		  4'b0111 := 1, // 0,1,2
		  4'b1011 := 1, // 0,1,3
		  4'b1101 := 1, // 0,2,3
		  4'b1110 := 1  // 1,2,3
		};
	  }



	
	// Methods for identification [cite: 109, 110]
	function string get_name(); return name; endfunction
	function pkt_type_e get_type(); return pkt_type; endfunction
	
	function string convert2string();
		return $sformatf("[%s] Type=%s Src=%b Trg=%b Data=%h",
				name, pkt_type.name(), source, target, data);
	endfunction
	
	function void print(string tag="");
		$display("Time=%0t %s %s", $time, tag, convert2string());
	endfunction
endclass