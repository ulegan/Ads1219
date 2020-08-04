### Prequisites
Install smbus2.py, because ADS1219 uses repeated start conditions, that are not supported with smbus

    pip3 install smbus2

### Constructor
**ADS1219( port=1, address=0x40, rdyPin=0 )** constructor<br />
* **port** is the I2C-port defaults to I2C1 on Pin3 (SDA) and Pin5 (SCL) on Raspberry Pi's
* **address** is the I2C-address
* **rdyPin** is the optional RDY-Pin, default: not connected

### Functions
**config( mux=MUX_DIF_01, gain=GAIN_1, datarate=DR_20, mode=MODE_SINGLESHOT, ref=VREF_INTERNAL )**
configures the ADS1219 operating mode. Use with the constants below<br />
**reset( )** resets ADS1219<br />
**start( )** starts a single conversion, or starts continuous conversions<br />
**powerdown( )** starts powerdown-mode, also stops conversions in continuous-mode<br />
**ready( )** returns True if a new conversion result is ready 
*(reads status-register)*<br />
**waitForResult( )** waits for a new conversion-result
*(uses **rdyPin** if given in constructor, or reads the status register)*<br />
**result( )** reads conversion result<br />
**callback( callbackFunction )** sets a callback function that is called, when a new conversion result is ready
*(only available if a **rdyPin** is given in the constructor)*

### Constants to use in config()
#### Constants for the input multiplexer
* **MUX_DIF_01** selects differential input pos=pin0 neg=pin1
* **MUX_DIF_23** selects differential input pos=pin2 neg=pin3
* **MUX_DIF_12** selects differential input pos=pin1 neg=pin2
* **MUX_SNG_0** selects single-ended input on pin0
* **MUX_SNG_1** selects single-ended input on pin1
* **MUX_SNG_2** selects single-ended input on pin2
* **MUX_SNG_3** selects single-ended input on pin3
* **MUX_SHORT** selects shorted differential inputs to meassure offset
#### Constants for gain selection
* **GAIN_1** input range +-2.048V with differential inputs and internal reference
* **GAIN_4** input range +-512mV with differential inputs and internal reference
#### Constants for selecting data rate
* **DR_20** sets data-rate to 20 samples per second
* **DR_90** sets data-rate to 90 samples per second
* **DR_330** sets data-rate to 330 samples per second
* **DR_1000** sets data-rate to 1000 samples per second
#### Constants for mode selection
* **MODE_SINGLESHOT** selects singleshot mode
* **MODE_CONTINUOUS** selects continuous mode
#### constants for selecting the reference voltage
* **VREF_INTERNAL** selects the internal 2.048V reference
* **VREF_EXTERNAL** selects an external reference 
### Examples
#### Read channel 0 in singleshot-mode
```python
from ADS1219 import ADS1219

ads=ADS1219()

ads.reset()
ads.config(ads.MUX_SNG_0, ads.GAIN_1, ads.DR_20, ads.MODE_SINGLESHOT, ads.VREF_EXTERNAL)
ads.start()
ads.waitForResult()
print(ads.result())
```
#### Read 100 sample betweeen inputs 0 and 1 in continuous-mode
```python
from ADS1219 import ADS1219

ads=ADS1219()

ads.reset()
ads.config(ads.MUX_DIF_01, ads.GAIN_1, ads.DR_20, ads.MODE_CONTINUOUS, ads.VREF_EXTERNAL)
ads.start()
for i in range(100):
	ads.waitForResult()
	print(ads.result())
```
#### Read for 5 seconds, using RDY-pin and callback
```python
from ADS1219 import ADS1219
from time import sleep

ads=ADS1219( rdyPin=4 )

def doSomething():
	v = ads.result()
	print( v )

ads.reset()
ads.config(ads.MUX_DIF_01, ads.GAIN_1, ads.DR_20, ads.MODE_CONTINUOUS, ads.VREF_EXTERNAL)
ads.callback( doSomething )
ads.start()
sleep(5)
```

