; home any - run before any or all axis homing

M400          			; Wait for motion to stop

G91           			; Use relative moves

M913 X30 Y30      	; Lower X, Y power
G4 P200         		; Wait to ensure settings are in place
G1 H2 Z5 F2400      ; lift Z relative to current position
