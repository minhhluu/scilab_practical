clc;
clear;

//Signal parameters
fm = 10; //original signal frequency (Hz)
fc = 100; //carrier frequency (Hz)
A = 1; //amplitude of the original signal
Ac = 1; //carrier amplitude
m = 0.5; //modulation index (0 < m < 1 to avoid signal distortion)
fs = 1000; //sampling frequency
T = 1; //simulation time (seconds)
t = 0:1/fs:T; //time axis

//generate original signal (modulating signal)
x = A*cos(2*%pi*fm*t);

//generate carrier wave
carrier = Ac *cos(2*%pi*fc*t);

//AM modulation
y_am = Ac *(1+m*cos(2*%pi*fm*t)).*cos(2*%pi*fc*t);

//Plot graphs
subplot(3,1,1);
plot(t,x);
title("Original Signal");
xlabel("Time (s)");
ylabel("Amplitude");

subplot(3,1,2);
plot(t,carrier);
title("Carrier Wave");
xlabel("Time (s)");
ylabel("Amplitude");

subplot(3,1,3);
plot(t,y_am);
title("AM Signal with m = 0.5");
xlabel("Time (s)");
ylabel("Amplitude");

//Part 2
m_values = [0.3,0.7,1.2];
figure(); 
for i=1:length(m_values)
    y_am_varied = Ac*(1+m_values(i)*cos(2*%pi*fm*t)).*cos(2*%pi*fc*t);
    subplot(3,1,i);
    plot(t,y_am_varied);
    title("AM Signal with m = " + string(m_values(i)));
    xlabel("Time (s)");
    ylabel("Amplitude");
end
