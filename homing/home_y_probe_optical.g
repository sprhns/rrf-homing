G91                 ; relative positioning
M208 Y320 S0		    ; temporarily extend Y-axis max by 10 mm
G1 H1 Y-5 F1800 	  ; move away a bit
G1 H1 Y330 F1800 	  ; move quickly to Y endstop and stop there (first pass) 1800
G1 Y-5 F6000       	; go back a few mm
G1 H1 Y330 F360     ; move slowly to Y axis endstop once more (second pass)

G1 Y-10 F6000			  ; offset 10 mm from endstop
M208 Y310 S0  	 	  ; correct Y-axis max to 310 mm
