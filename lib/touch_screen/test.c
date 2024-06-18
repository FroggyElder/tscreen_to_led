#include "touch_screen.h"

int main () {
    struct tscreen* screen = TScreen_new("/dev/input/event0");

    while (1) {
        screen->update(screen);
        printf("x:%d y:%d %s\n",screen->status->x,screen->status->y,screen->status->pressed ? "pressed" : "released");
    }

    screen->remove(screen);
    return 0;
}