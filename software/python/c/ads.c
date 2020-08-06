#include "ads1219.h"
	
int i2c_handle;

int i2c_init(int addr) {
int handle;
    if( (handle = open("/dev/i2c-1",O_RDWR))<0 ) return -1;
    if( ioctl(handle, I2C_SLAVE, addr)<0 ) return -2; 
	i2c_handle = handle;
    return handle;
}
 
int write_command(const uint8_t cmd) {
	return i2c_smbus_write_byte(i2c_handle, cmd);
}
 
int read_registers(uint8_t reg, int size, uint8_t* buffer) {
    struct i2c_rdwr_ioctl_data work_queue;
    struct i2c_msg msg[2];
 
    work_queue.nmsgs = 2;
    work_queue.msgs = msg;
     
    work_queue.msgs[0].addr = i2c_addr;
    work_queue.msgs[0].len = 1;
    work_queue.msgs[0].flags = 0;
    work_queue.msgs[0].buf = &reg;
 
    work_queue.msgs[1].addr = i2c_addr;
    work_queue.msgs[1].len = size;
    work_queue.msgs[1].flags = I2C_M_RD;
    work_queue.msgs[1].buf = buffer;
     
    return ioctl(i2c_handle,I2C_RDWR,&work_queue);
}

void ads_config(uint8_t mux, uint8_t gain, uint8_t datarate, uint8_t mode, uint8_t ref) {
	uint8_t value = mux | gain | datarate | mode | ref;
	i2c_smbus_write_byte_data(i2c_handle, CMD_WREG, value);
}

uint8_t ads_ready() {
	uint8_t buffer[2];
	read_registers(CMD_RREG|4, 1, buffer);
	return buffer[0] & 0x80;
}

void ads_waitForReady() {
	while(!ads_ready()) usleep(1000);
}

int32_t ads_result() {
	uint8_t buffer[3];
	read_registers(CMD_RDATA, 3, buffer);
//	printf("\n%02x%02x%02x\n",buffer[0],buffer[1],buffer[2]);
	int32_t value = (buffer[0]&0x80 ? 0xff000000:0x00000000) | (buffer[0]<<16) | (buffer[1]<<8) | (buffer[2]);
	return value;
}

 
