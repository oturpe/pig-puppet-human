// Cpu frequency for util/delay.h
#define F_CPU 1000000

// Half of delay in main execution loop, given in milliseconds.
#define LOOP_DELAY 50

// Half length of indicator led on-off sequence. In other words, the time
// the indicator is lit and darkened. Given in units of LOOP_DELAY.
#define INDICATOR_HALF_PERIOD 10

// Delay to detect pig movement from ldr's. Given in units of LOOP_DELAY.
#define LDR_DELAY 3

// Delay to inactivate human after is has been activated. Given in units of
// LOOP_DELAY.
#define HUMAN_DELAY 360

// Pwm duty cycle for running the motor. 0 is 0 %, 255 is 100 %.
#define HUMAN_MOTOR_DUTY_CYCLE 200

//Enables debug messaging
#define DEBUG
