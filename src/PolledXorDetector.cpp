#include <avr/io.h>

#include "Attiny13Utils.h"

#include "PolledXorDetector.h"

PolledXorDetector::PolledXorDetector(volatile uint8_t * port,
                                     uint8_t firstPin,
                                     uint8_t secondPin,
                                     int16_t delay)
      : port(port),
      firstPin(firstPin),
      secondPin(secondPin),
      initialDelay(delay),
      remainingDelay(delay) {
}

bool PolledXorDetector::poll() {
    bool firstReading = *port & BV(firstPin);
    bool secondReading = *port & BV(secondPin);

    if(firstReading ^ secondReading) {
        remainingDelay -= 1;
        return remainingDelay <= 0;
    }

    // Reset as no xor condition was detected.
    remainingDelay = initialDelay;
    return false;
}