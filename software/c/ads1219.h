#ifndef _ads1219_h_

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <inttypes.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <i2c/smbus.h>
#include <sys/ioctl.h>
#include <time.h>

#define i2c_addr 0x40
 
#define CMD_RESET  0x06
#define CMD_START_SYNC  0x08
#define CMD_POWERDOWN  0x02
#define CMD_RDATA  0x10
#define CMD_RREG  0x20
#define CMD_WREG  0x40
#define MUX_DIF_01  0x00
#define MUX_DIF_23  0x20
#define MUX_DIF_12  0x40
#define MUX_SNG_0  0x60
#define MUX_SNG_1  0x80
#define MUX_SNG_2  0xa0
#define MUX_SNG_3  0xc0
#define MUX_SHORT  0xe0
#define GAIN_1  0x00
#define GAIN_4  0x10
#define DR_20  0x00
#define DR_90  0x04
#define DR_330  0x08
#define DR_1000  0x0c
#define MODE_SINGLESHOT  0x00
#define MODE_CONTINUOUS  0x02
#define VREF_INTERNAL  0x00
#define VREF_EXTERNAL  0x01

int write_command(const uint8_t cmd);
int read_registers(uint8_t reg, int size, uint8_t* buffer);

int i2c_init(int addr);
void ads_config(uint8_t mux, uint8_t gain, uint8_t datarate, uint8_t mode, uint8_t ref);
void ads_waitForReady();
int32_t ads_result();

#define ads_start() write_command(CMD_START_SYNC)
#define ads_reset() write_command(CMD_RESET)
#define ads_powerdown() write_command(CMD_POWERDOWN)

#endif