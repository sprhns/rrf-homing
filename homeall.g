; homeall.g
; called to home all axes

M98 P"homing/home_xy_before.g"

; y - home Y first to line up sensor for X
M98 P"homing/home_y_probe_optical.g"
G4 P200             ; Delay

; x
M98 P"homing/home_x_probe_optical.g"
G4 P200             ; Delay

; z
M98 P"homez.g"
G4 P200             ; Delay

M913 X100 Y100      ; back to full power
