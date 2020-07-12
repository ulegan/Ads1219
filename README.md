# Ads1219
24bit ADC with [ADS1219](https://www.ti.com/product/ADS1219)

pcb made with [KiCad](https://kicad-pcb.org/)

### Boards ordered from [OSHPARK](https://oshpark.com/)
![kicad rendering](/doc/kicad_s.png) ![preview](/doc/board_osh.png "OSHPARK preview") ![bottom](/doc/populated_board.jpg "populated board")

#### I²C-Addressing
The ADS1219 has two address-pins A0 and A1. <br />
A1 is always connected to GND, A1 has a pullup to VCC.<br />
So the I²C-ADDRESS defaults to 0x41. <br />
Four different addresses can be selected by connecting A0:

| A0 connected to | Address |
| :-------------- |:-------:|
| GND             | 0x40    |
| VCC or open     | 0x41    |
| SDA             | 0x42    |
| SCL             | 0x43    |

```c++

```
