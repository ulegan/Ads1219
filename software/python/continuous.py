from ADS1219 import ADS1219

ads=ADS1219()

ads.reset()
ads.config(ads.MUX_DIF_01, ads.GAIN_1, ads.DR_20, ads.MODE_CONTINUOUS, ads.VREF_EXTERNAL)
ads.start()
for i in range(100):
	ads.waitForResult()
	print(ads.result())
