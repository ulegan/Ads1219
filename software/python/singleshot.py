from ADS1219 import ADS1219

ads=ADS1219()

ads.reset()
ads.config(ads.MUX_SNG_0, ads.GAIN_1, ads.DR_20, ads.MODE_SINGLESHOT, ads.VREF_EXTERNAL)
ads.start()
ads.waitForResult()
print(ads.result())
