#ifndef POLLED_XOR_DETECTOR_H
#define POLLED_XOR_DETECTOR_H

#include <stdint.h>

/// \class PolledXorDetector
///
/// Detects a xor condition between two input pins. Thus, reports positive when
/// one and only one of the two pins is high. This class works by polling, thus
/// the condition has to hold when polling happens.
///
/// This clas also optionally delay where xor condition has to persist over
/// a configurable number of polls before positive is reported.
///
/// \author
///    Otto Urpelainen
///
/// \date
///    2015-08-25
class PolledXorDetector {
public:
    /// \brief
    ///    Initializes a new polled xor detector. Port and pins which are polled
    ///    must be given. Delay input determines how many consecutive positive
    ///    readings are needed before a positive is reported.
    ///
    /// Delay must be positive value. Zero and negative values are interpreted
    /// as no delay, i.e. the same as value of 1.
    ///
    /// \param port
    ///    Port where inputs pins are found, given in PINx format
    ///
    /// \param firstPin
    ///    First input pin, given in PINxn format
    ///
    /// \param firstPin
    ///    Second input pin, given in PINxn format
    ///
    /// \param delay
    ///    How many consecutive positives output is delayed
PolledXorDetector(volatile uint8_t * port,
                  uint8_t firstPin,
                  uint8_t secondPin,
                  int16_t delay);

public:
    /// \brief
    ///    Polls the detector for xor signal. If input pins are in xor
    ///    condition, remaining delay is reduced by one and, if no delay
    ///    remains, true is returned. If input pins are not in xor condition,
    ///    remaining delay is returned to initial value.
    ///
    /// \return
    ///    If xor signal has been detected.
    bool poll();

private:
    /// Port of input pins, in PINx format
    const volatile uint8_t * port;
    /// First input pin, in PINxn format
    const uint8_t firstPin;
    /// Second input pin, in PINxn format
    const uint8_t secondPin;

    /// Amount of delay required to output a signal
    const int16_t initialDelay;
    /// Amount of remaining delay
    int16_t remainingDelay;
};

#endif