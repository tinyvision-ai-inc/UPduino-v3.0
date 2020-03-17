# Board Bringup

## Check voltages
| Item | Expected Value | Actual Value | Pass/Fail |
| :--- | :--- | :---  | :---  |
| Voltages | 5V | 4.995V | Pass |
|  | 3.3V | 3.299V | Pass |
|  | 2.5V | 3.051V | Need to check the FPGA spec to see if this si within the voltage specification or not. |
|  | 1.2V | 1.193V | Pass |
| External clock | 12MHz | 12MHz | Pass |
| Voltages | 5V | 4.995V | Pass |
| Flash | ID: 0xEF4016 | 0xEF4016 | Pass |
| Programming | Flash | Programs | Pass |
|  | CRAM | Programs | Pass |
| LED | DONE | Lights when FPGA programs, low otherwise | Pass |
| 3 color LED | Not installed! | DNI | Untested |
| PLL lock | Locked | TBD | Untested |




