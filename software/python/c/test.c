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
