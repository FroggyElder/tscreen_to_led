cmake_minimum_required(VERSION 3.20)

project(tscreen_to_led)

set(CMAKE_C_COMPILER arm-linux-gcc)

add_subdirectory(${PROJECT_SOURCE_DIR}/lib/led)
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/lcd)
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/touch_screen)
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/bmp_read)

include_directories(${PROJECT_SOURCE_DIR}/lib/led)
include_directories(${PROJECT_SOURCE_DIR}/lib/lcd)
include_directories(${PROJECT_SOURCE_DIR}/lib/touch_screen)
include_directories(${PROJECT_SOURCE_DIR}/lib/bmp_read)

add_executable(tscreen_to_led main.c)

target_link_libraries(tscreen_to_led led_ctrl lcd touch_screen bmp_read)