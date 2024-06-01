#ifndef _LED_H_
#define _LED_H_

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

#define TEST_MAGIC 'x'                    //定义幻数

// #define LED1 _IO(TEST_MAGIC, 0)              
// #define LED2 _IO(TEST_MAGIC, 1)
// #define LED3 _IO(TEST_MAGIC, 2)
// #define LED4 _IO(TEST_MAGIC, 3)

#define LED_ON  	0	//灯亮
#define LED_OFF		1   //灯灭

struct led_device {
    int fd;
    int count;
    char* status; //LED_ON or LED_OFF, malloced by count

    int (* coutrol)(struct led_device* led,int led_num,int status);
    bool (* remove)(struct led_device* led);
};

struct led_device* newLed (char* led_path);

static bool removeLed (struct led_device*);

static int led_ctrl(struct led_device* led,int led_num,int status);

#endif // _LED_H_