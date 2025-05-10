am = 1; //amplitude of the original signal
fm = 5; //frequency of the original signal (Hz)
fc = 50; //carrier frequency (Hz)
ac = .5; //amplitude of the carrier
m = 2; //modulation index (0 < m < 1 to avoid signal distortion)
fs = 1000; //sampling frequency
T = 1; //simulation time (s)

//Modulate the signal (audio signal)
Ms = am *sin(2*%pi*fm*t);

//carrier wave
Cs = ac *sin(2*%pi*fc*t);

//frequency modulation 
Ms = ac *sin(2*%pi*fc*t+m*sin(2*%pi*fm*t));

//plot graphs
figure();

//Modulating Signal
subplot(3,1,1);
plot(t,Ms,'-b','LineWidth',1.5);
title('modulating signal');
xlabel('t (seconds)');
ylabel('Amplitude');
grid on;

//carrier Signal
subplot(3, 1, 2); 
plot(t, Cs, '-g', 'LineWidth', 1.5); 
title('Carrier Signal'); 
xlabel('t (seconds)'); 
ylabel('Amplitude'); 
grid on;

// Modulated Signal 
subplot(3, 1, 3); 
plot(t, Ms, '-r', 'LineWidth', 1.5); 
title('Modulated Signal (FM)'); 
xlabel('t (seconds)'); 
ylabel('Amplitude'); 
grid on;
