M208 Y320 S0  	    ; temporarily extend Y-axis max by 10 mm

G90                 ; absolute positioning
G1 H0 Y320	 			  ; move to extended max Y

G91                 ; relative positioning
G1 H1 X5 F1800 	  	; move away a bit
G1 H1 X-330 F1800	  ; move quickly to X endstop and stop there (first pass) 1800
G1 X5 F6000       	; go back a few mm

G1 H1 X-330 F360    ; move slowly to X axis endstop once more (second pass)

G1 X5 F6000       	; go back a few mm to prevent running the motor into the Y endstop mount

G90                 ; absolute positioning
G1 H0 Y310				  ; move to real max Y
M208 Y310 S0		    ; fix Y axis to 310 mm
