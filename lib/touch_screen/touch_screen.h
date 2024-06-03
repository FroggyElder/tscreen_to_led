#ifndef _TOUCH_SCREEN_H_
#define _TOUCH_SCREEN_H_

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/input.h>
#include <sys/mman.h>
#include <stdbool.h>

#define X_TOUCH_TO_LCD 800/1024
#define Y_TOUCH_TO_LCD 480/600

struct tscreen_status {
    bool pressed;
    int x;
    int y;
};

struct tscreen {   
    int fd;
    struct tscreen_status* status;

    bool (* remove) (struct tscreen* touch_screen);
    int (* update) (struct tscreen* touch_screen);
};

//Create a new touch screen struct
struct tscreen* TScreen_new (char* path);
//Abandon the screen
static bool destoryScreen (struct tscreen* touch_screen);
//Wait for a behavior and put it in the screen struct
static int updateStatus (struct tscreen* touch_screen);

#endif //_TOUCH_SCREEN__H_