# Board Bringup

## Check voltages
| Item | Expected Value | Actual Value | Pass/Fail |
| :--- | :--- | :---  | :---  |
| Voltages | 5V | 5.041V | Pass |
|  | 3.3V | 3.306V | Fail |
|  | 2.5V | 3.090V | Need to check the FPGA spec to see if this si within the voltage specification or not. |
|  | 1.2V | 1.201V | Pass |
| External clock | 12MHz | 12MHz | Pass |
| Flash | ID: 0xEF4016 | 0xEF4016 | Pass |
| Programming | Flash | Programs | Pass |
|  | CRAM | Programs | Pass |
| LED | DONE | Lights when FPGA programs, low otherwise | Pass |
| 3 color LED | Able to get all 3 colors | Works | Pass |
| PLL lock | Locked | TBD | Untested |

# Known bugs

## RGB LED mapping is different from the UPduino v2
The following table summarizes this bug which will be fixed in the production version of the board.
|SB_RGBA Port | v2 | v3 |
| :--- | :--- | :---|
| RGB0 | Green| Red |
| RGB1 | Blue | Green|
| RGB2 | Red  | Blue|



