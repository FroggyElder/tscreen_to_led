#include "led.h"

struct led_device* newLed (char* led_path) {
    //make space
    struct led_device* new_led = (struct led_device*)malloc(sizeof(struct led_device));
    if(new_led==NULL) {
        perror("Fail to allocate memory for led");
        goto init_error;
    }

    //open the led file
    new_led->fd = open(led_path,O_RDWR);
    if(new_led->fd==-1){
        perror("failed to open led");
        goto general_error;
    }

    //we were supposed to read led count here, but ehh...
    new_led->count = 4;

    //initiate status
    new_led->status = (char*)malloc(sizeof(char)*new_led->count);
    if (new_led->status==NULL) {
        perror("failed to make space for led status");
        goto end_error;
    }
    for (int i=0;i<new_led->count;i++)
        new_led->status[i] = -1;

    //allocate functions
	new_led->remove = removeLed;
	new_led->coutrol = led_ctrl;

    //if all is good
    return new_led;

end_error:
    close(new_led->fd);
general_error:
    free(new_led);
init_error:
    return NULL;
};

static bool removeLed (struct led_device* device) {
	if (device==NULL) {
		perror("trying to destory an empty led");
		return false;
	}

	close(device->fd);
    free(device->status);
	free(device);
	return true;	
}

static int led_ctrl(struct led_device* led,int led_num,int status)
{
	if (led==NULL) {
		perror("led not opened properly");
		return -1;
	}
    if (led_num > led->count-1) {
        perror("we haven't so many leds");
        return -1;
    }

    led->status[led_num] = status;
	ioctl(led->fd,_IO(TEST_MAGIC, led_num),status);

	return 0;
}
