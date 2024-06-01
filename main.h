#ifndef _MAIN_H_
#define _MAIN_H_

#include "lcd.h"
#include "led.h"
#include "touch_screen.h"
#include "bmp_read.h"

#define LCD0 "/dev/fb0"
#define TS0 "/dev/input/event0"
#define LED0 "/dev/Led"

#define ARGB_BLACK 0xff000000

#define BULB_ON "./image/light_on.bmp"
#define BULB_OFF "./image/light_off.bmp"

#endif // _MAIN_H_