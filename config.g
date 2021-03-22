; partial config.g
; contains only the motor and z-probe config
; Beware, my XY motors are connected to physical drivers 1 & 2. My extruder is hooked up at 0.

M569 P1 S1 D2 F2                          ; physical drive 1 (XY) goes forward using TMC220x driver timings (spreadcycle)
M569 P2 S1 D2 F2                          ; physical drive 2 (XY) goes forward using TMC220x driver timings(spreadcycle)

; Endstops
; xstop pin didn't work, hence xstopmax is used but configured for x low
M574 X1 S1 P"xstopmax"  				          ; configure endstop switch for low end on X
M574 Y2 S1 P"ystopmax"                    ; configure endstop switch for high end on Y

; Z-Probe
M558 P8 I1 R.5 C"!zstop" H5 F240 T6000    ; set probe type piezo - feed rate 4 mm/s, connected to zstop , switch type unfiltered digital, dive height 5, travel speed between points 1800 mm/min, recovery 0.4s
G31 P100 X0 Y0 Z-0.13                     ; set Z probe trigger value, offset and trigger height (measured was: Z-0.07, smaller nozzle higher up when printing)
