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
