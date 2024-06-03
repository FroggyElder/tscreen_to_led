#include "main.h"

int main () {
    //Open devices
    struct lcd_device* lcd0 = newScreen(LCD0); //lcd screen
    struct tscreen* ts0 = TScreen_new(TS0); // touch screen
    struct led_device* led0 = newLed(LED0); // led light

    //clear screen and initiate bulb icons
    lcd0->clear(lcd0,ARGB_BLACK);
    for (int i=0;i<=600;i+=200) {
        unsigned int* data_buffer = bmpToArgb(BULB_OFF,NULL,NULL);
        lcd0->paint(lcd0,data_buffer,200,200,i,0);
        free(data_buffer);
    }

    //close leds
    for(int i=0;i<led0->count;i++)
        led0->coutrol(led0,i,LED_OFF);

    while (1) {
        ts0->update(ts0);
        if(ts0->status->pressed==true) {
            if (ts0->status->y<=200) {

                int led_num = ts0->status->x / 200;
                while (1) {
                    ts0->update(ts0);
                    if(ts0->status->pressed==false) {
                        if (ts0->status->x/200==led_num&&ts0->status->y<=200) {
                            if (led0->status[led_num] == LED_OFF) {
                                unsigned int* data_buffer = bmpToArgb(BULB_ON,NULL,NULL);
                                lcd0->paint(lcd0,data_buffer,200,200,200*led_num,0);
                                free(data_buffer);
                                led0->coutrol(led0,led_num,LED_ON);
                            }
                            else{
                                unsigned int* data_buffer = bmpToArgb(BULB_OFF,NULL,NULL);
                                lcd0->paint(lcd0,data_buffer,200,200,200*led_num,0);
                                free(data_buffer);
                                led0->coutrol(led0,led_num,LED_OFF);
                            }
                        }
                        break;
                    }
                }
            }
        }
    }

    //close devices
    ts0->remove(ts0);
    lcd0->remove(lcd0);
    led0->remove(led0);
}