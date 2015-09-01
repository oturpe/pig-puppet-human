// Pig puppet human
//
// Firmware for attiny13 based controller for the "human" characters in pig
// puppet installation. Might be too artsy and confusing to try to explain the
// whole thing here in an engineer kind of way. I am sorry that the purpose of
// this program might be somewhat obscure. I assure you that it really is.
//
// Created on: 2015-08-14
// Author: Otto Urpelainen
// Email: oturpe@iki.fi

#include "Attiny13Utils.h"

#include "config.h"

#include <avr/io.h>
#include <util/delay.h>

#ifdef DEBUG
#include "Debug.h"
#endif

/// \brief Turns the indicator led on of off
///
/// \param lit
///    If led is turned on. Otherwise it is turned off.
inline void setIndicator(bool lit) {
  if (lit)
    PORTB |= BV(PORTB0);
  else
    PORTB &= ~BV(PORTB0);
}

// How many more sensors until presence of pig is detected
uint8_t pigDetectionDelay = LDR_DELAY;

/// \brief
///    Tracks if light dependent resistors have had different exposure LDR_DELAY
///    times consecutively. This is interpreted to mean that pig has appeared in
///    front of human.
///
/// \return
///    If pig is detected
inline bool pollSensors() {
    if((PINB & BV(PINB3)) ^ (PINB & BV(PINB4))) {
        if(pigDetectionDelay > 0) {
            pigDetectionDelay--;
        }
    } else {
        pigDetectionDelay = LDR_DELAY;
    }

    return pigDetectionDelay == 0;
}

uint16_t humanInactivityDelay = 0;

inline void runHuman() {
    if(humanInactivityDelay > 0) {
        humanInactivityDelay--;
        PORTB |= BV(PORTB1) | BV(PORTB2);
        OCR0B = 0xff - HUMAN_MOTOR_DUTY_CYCLE;
        return;
    }

    PORTB &= ~BV(PORTB1) & ~BV(PORTB2);
    OCR0B = 0xff;
}

int main() {
    #ifdef DEBUG
        /* TODO: implement debugging
        Debug debug(DEBUG_FREQ);
        */
    #endif

    // Set output pins: B0 (indicator), B1 (motor), B2 (lamp)
    DDRB |= BV(DDB0) | BV(DDB1) | BV(DDB2);

    // Initialize non-inverted pwm in pin OC0B (PB1)
    TCCR0A |= BV(WGM01) | BV(WGM00);
    TCCR0A |= BV(COM0B1);
    Attiny13::setTimer0Prescaler(Attiny13::PSV_64);

    // Initialize human as not doing anything.
    OCR0B = 0xff;

    bool indicatorLit = false;
    uint16_t counter = 0;
    while(true) {
        counter += 1;
        _delay_ms(LOOP_DELAY);

        // Read sensors and re-activate human if pig is detected
        if(pollSensors()) {
            humanInactivityDelay = HUMAN_DELAY;
        }

        runHuman();

        if(counter % INDICATOR_HALF_PERIOD == 0) {
            indicatorLit = !indicatorLit;
            setIndicator(indicatorLit);
        }
    }
}
