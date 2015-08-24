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
void setIndicator(bool lit) {
  if (lit)
    PORTB |= BV(PORTB0);
  else
    PORTB &= ~BV(PORTB0);
}

int main() {
  // Wait for powr supply capacitors to charge etc.
  //_delay_ms(1000);

  #ifdef DEBUG
    /* TODO: implement debugging
    Debug debug(DEBUG_FREQ);
    */
  #endif

  // Set pin B0 as output (indicator)
  DDRB |= BV(DDB0);

  bool indicatorLit = false;
  uint16_t counter = 0;
  while(true) {
    counter += 1;
    _delay_ms(LOOP_DELAY);

    if(counter % INDICATOR_HALF_PERIOD == 0) {
      indicatorLit = !indicatorLit;
      setIndicator(indicatorLit);
    }
  }
}