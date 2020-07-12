# Ads1219
A breakout board for the [ADS1219](https://www.ti.com/product/ADS1219) 24-bit AD-Converter.<br />
Size and pinout is the same as the popular ADS1x15 boards.
- Up to 1000Hz samplingrate
- Single or continuous conversion
- Single ended or differential inputs

pcb made with [KiCad](https://kicad-pcb.org/)

There is an [Arduino library](https://github.com/OM222O/ADS1219) for it <br />
and also one for [micropython](https://github.com/miketeachman/micropython-ads1219) that I have not tested yet.<br />
Both libraries use the I²C-address 0x40 by default, so you have to connect the ADDR-Pin to GND, or use 0x41 in the constructor.

### Boards ordered from [OSHPARK](https://oshpark.com/)
![kicad rendering](/doc/kicad_s.png) ![preview](/doc/board_osh.png "OSHPARK preview") ![first board](/doc/populated_board.jpg "populated board")

### Diagramm 
[![Diagramm](/doc/diagramm.png)](/doc/Diagramm.pdf)

#### I²C-Addressing
The ADS1219 has two address-pins A0 and A1. <br />
A1 is always connected to GND, A1 has a pullup to VCC.<br />
So the I²C-ADDRESS defaults to 0x41. <br />
Four different addresses can be selected by connecting A0:

| ADDR connected to | Address |
| :---------------- |:-------:|
| GND               | 0x40    |
| VCC or open       | 0x41    |
| SDA               | 0x42    |
| SCL               | 0x43    |

```c++

```
