## Table of Contents

  - [Digital Signal Modulation](#digital-signal-modulation)
    - [Overview](#overview)
    - [Parameters](#parameters)
    - [Time Vector](#time-vector)
    - [Square Wave Generation](#square-wave-generation)
  - [Amplitude Modulation](#amplitude-modulation)
    - [Brief Theory](#brief-theory)
    - [AM Signal Formula](#am-signal-formula)
    - [Scilab Simulation Steps](#scilab-simulation-steps)
    - [Analysis of Results](#analysis-of-results)



## Digital Signal Modulation

![digital_sm](https://i.postimg.cc/MT1fNHRS/image.png)


### Overview
This script generates a digital square wave signal and visualizes it over a given duration. The square wave is sampled at a specified rate and plotted on two different subplots with different line styles.

### Parameters
- **`frequency = 1;`** The frequency of the square wave is set to 1 Hz, meaning the wave will complete one full cycle per second.
  
- **`duration = 2;`**  The total duration of the signal is 2 seconds.

- **`sampling_rate = 1000;`**  The sampling rate is set to 1000 samples per second, meaning there will be 1000 samples captured per second.

### Time Vector
- **`time = 0:1/sampling_rate:duration;`**  This creates a time vector starting from 0 up to `duration` (2 seconds), with a step size of `1/sampling_rate` (0.001 seconds between each sample).


### Square Wave Generation
- **`square_wave = squarewave(2*pi*frequency*time);`**  This generates the square wave signal with the specified frequency. The signal oscillates between 1 and -1, and its frequency is determined by `2*pi*frequency*time`.


## Amplitude Modulation 

### Brief Theory

Amplitude Modulation (AM) is a technique where the amplitude of a carrier signal changes according to the instantaneous amplitude of the modulating (message) signal.

### AM Signal Formula
$$
m(t) = A_m \cos(2\pi f_m t)
$$

- `m(t)` = message signal
- `Am` = amplitude of the message signal
- `fm` = frequency of the message signal
- `t` = time

### Scilab Simulation Steps

- Generate carrier and message signals
- Perform AM modulation
- Display modulated signal

**Given Parameters:**
- Message frequency: 50 Hz
- Carrier frequency: 500 Hz
- Carrier amplitude: 1V
- Modulation indices: 0.5, 1.0, 1.5

![scilab_AM_modulation](https://i.postimg.cc/RZqQ2pyM/image.png)

### Analysis of Results

- **m = 0.5**: Under-modulation
    • The carrier wave is only slightly modulated.
    • The envelope of the modulated signal is still visible but does not fully represent the modulating signal.
    • The signal remains within the under-modulated region.
- **m = 1.0**: Ideal envelope matching
    • The envelope of the modulated signal perfectly follows the shape of the modulating signal.
    • This represents 100% modulation, where the carrier amplitude reaches zero at the lowest points of the modulating signal.
- **m > 1.0**: Over-modulation (distortion, phase reversal)
    • The envelope is distorted, leading to phase reversal in some sections.
    • This results in over-modulation, which causes envelope detection issues in AM demodulation.
- **Negative m**: Inverted phase but structurally similar signal
    • The envelope still follows the modulating signal but is inverted in phase.
    • While this does not fundamentally change the modulation, it can introduce phase shifts that may affect demodulation.

