; homez.g
; two pass Z-probe

G91                 ; relative positioning
G1 H2 Z10 F6000     ; drop Z relative to current position

G90                 ; absolute positioning
G1 X155 Y155 F4000  ; move probe to bed center

M913 Z70      		  ; Lower Z power

M558 F600           ; set probe feed rate at 500mm/m
G30                 ; probe Z (at high speed)
G30                 ; probe Z (at high speed again)

M913 Z100      		  ; Restore full Z power

G1 Z30 F4000        ; lower bed
