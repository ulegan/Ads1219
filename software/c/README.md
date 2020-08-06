### Prequisites
Install i2c-dev library for C
	apt-get install libi2c-dev
	
### Restrictions
Usage of RDY-pin is not supported yet

### Functions
**ads_config( mux, gain, datarate, mode, ref )**
configures the ADS1219 operating mode. Use with the constants below<br />
**ads_reset( )** resets ADS1219<br />
**ads_start( )** starts a single conversion, or starts continuous conversions<br />
**ads_powerdown( )** starts powerdown-mode, also stops conversions in continuous-mode<br />
**ads_ready( )** returns True if a new conversion result is ready 
*(reads status-register)*<br />
**ads_waitForResult( )** waits for a new conversion-result
	
### Constants to use in ads_config()
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
### Example program test.c
````C
#include "ads1219.h"

int main() {
	int res;
	if( ( res = i2c_init(i2c_addr))<0 ) 
		printf("init failed with %d\n", res);
	ads_reset();
	ads_config(MUX_SHORT, GAIN_1, DR_20, MODE_CONTINUOUS, VREF_INTERNAL);
	ads_start();
	while(1) {
		ads_waitForReady();
		printf("%d  %d\n", time(0), ads_result());
	}
}
````
#### Compile example program with:
    cc test.c ads1219.c -otest -li2c
