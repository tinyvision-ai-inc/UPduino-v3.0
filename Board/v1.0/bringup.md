# Board Bringup

## Check voltages
| Item | Expected Value | Actual Value | Pass/Fail |
| :--- | :--- | :---  | :---  |
| Voltages | 5V | 4.995V | Pass |
|  | 3.3V | 3.299V on one board, 3.7/3.8 on others! | Fail |
|  | 2.5V | 3.051V | Need to check the FPGA spec to see if this si within the voltage specification or not. |
|  | 1.2V | 1.193V | Pass |
| External clock | 12MHz | 12MHz | Pass |
| Voltages | 5V | 4.995V | Pass |
| Flash | ID: 0xEF4016 | 0xEF4016 | Pass |
| Programming | Flash | Programs | Pass |
|  | CRAM | Programs | Pass |
| LED | DONE | Lights when FPGA programs, low otherwise | Pass |
| 3 color LED | Able to get all 3 colors | Works | Pass |
| PLL lock | Locked | TBD | Untested |





