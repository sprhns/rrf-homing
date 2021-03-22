# RepRap Firmware - Homing Example

This repo contains a partial config for homing (alternative sequence YXZ) with optical endstops using the following endstop mount:

https://www.thingiverse.com/thing:4701033


Goals for the config:

* Modular - avoid repetition, allow reuse
* Tailored to optical endstops and motors running in SpreadCycle (StealthChop works too, but is no requirement)
* Why SpreadCycle?
  * I switched to 0.9 motors for XY and had lots of vibration issues in StealthChop. Even at very slow speeds.
  * Changing to SpreadCycle eliminated those almost entirely (except close to the frame resonance)
  * More torque
  * Higher top speeds achievable
* Why optical endstops?
  * Since I had to ditch StealthChop, no more sensorless homing. Theoretically it can still be used for homing and then switched to SpreadCycle. But I wanted a more clear cut solution. Homing in SpreadCycle is almost as silent when moving and even more silent with optical endstops.
* The Z homing file and config extracts is only included for completeness sake. I use a Precision Piezo probe.
