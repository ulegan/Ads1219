#	Python driver for the Texas Instruments ADS1219 ADC
#	Tested with Raspberry PI

#	Copyright (c) 2020 Uwe Nagel

#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.

#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.

#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <https://www.gnu.org/licenses/>.

from smbus2 import SMBus, i2c_msg
import RPi.GPIO as GPIO
from time import sleep

class ADS1219:

	CMD_RESET = 0x06
	CMD_START_SYNC = 0x08
	CMD_POWERDOWN = 0x02
	CMD_RDATA = 0x10
	CMD_RREG = 0x20
	CMD_WREG = 0x40
	MUX_DIF_01 = 0x00
	MUX_DIF_23 = 0x20
	MUX_DIF_12 = 0x40
	MUX_SNG_0 = 0x60
	MUX_SNG_1 = 0x80
	MUX_SNG_2 = 0xa0
	MUX_SNG_3 = 0xc0
	MUX_SHORT = 0xe0
	GAIN_1 = 0x00
	GAIN_4 = 0x10
	DR_20 = 0x00
	DR_90 = 0x04
	DR_330 = 0x08
	DR_1000 = 0x0c
	MODE_SINGLESHOT = 0x00
	MODE_CONTINUOUS = 0x02
	VREF_INTERNAL = 0x00
	VREF_EXTERNAL = 0x01

	def write_command( self, cmd ):
		self.bus.write_byte( self.i2c_adr, cmd )

	def read_registers( self, reg, size ):
		write = i2c_msg.write( self.i2c_adr, [reg] )
		read  = i2c_msg.read( self.i2c_adr, size )
		self.bus.i2c_rdwr( write, read )
		return list( read )

	def start( self ):
		self.write_command( self.CMD_START_SYNC )

	def reset( self ):
		self.write_command( self.CMD_RESET )

	def powerdown( self ):
		self.write_command( self.CMD_POWERDOWN )

	def config( self, mux=MUX_DIF_01, gain=GAIN_1, datarate=DR_20, mode=MODE_SINGLESHOT, ref=VREF_INTERNAL ):
		value = mux | gain | datarate | mode | ref
		self.bus.write_byte_data( self.i2c_adr, self.CMD_WREG, value )

	def ready( self ):
		buffer = self.read_registers( self.CMD_RREG|4, 1 )
		return buffer[0] & 0x80
		
	def waitForResult( self ):
		if self.rdyPin>0:
			GPIO.wait_for_edge( self.rdyPin, GPIO.FALLING )
		else:
			while not self.ready():
				sleep(0.0005)

	def result( self ):
		buffer = self.read_registers( self.CMD_RDATA, 3 )
		value = (buffer[0]<<16) | (buffer[1]<<8) | (buffer[2])
		if value >= 0x800000:
			value = value-0x1000000
		return value

	def callback( self, callbackFunction ):
		GPIO.add_event_detect( self.rdyPin, GPIO.FALLING, callback=lambda _: callbackFunction() )

	def __init__( self, port=1, address=0x40, rdyPin=0 ):
#		print("_INIT_")
		self.i2c_adr = address  #0x40
		self.bus = SMBus( port, True )
		self.rdyPin = rdyPin
		if( rdyPin>0 ):
			GPIO.setmode( GPIO.BCM )
			GPIO.setup(rdyPin, GPIO.IN )

	def __enter__( self ):
#		print("_ENTER_")
		return self
		
	def __del__( self ):
#		print("_DEL_")
		self.bus.close()

	def __exit__( self, exc_type, exc_value, traceback ):
#		print("_EXIT_")
		self.bus.close()
