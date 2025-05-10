//Parameters
amplitude_modulating = 1; //Amplitude of modulating signal
frequency_modulating = 5;

amplitude_carrier = 0.5;
frequency_carrier = 50;

modulation_index = 2;

duration = 1;

sampling_rate = 5000;

//Time vector
time = 0:1/sampling_rate:duration;

//Modulating signal (audio signal)
modulating_signal = amplitude_modulating*sin(2*%pi*frequency_modulating*time);

//Carrier signal
carrier_signal = amplitude_carrier*sin(2*%pi*frequency_carrier*time);

//Frequency modulation
modulated_signal = amplitude_carrier*sin(2*%pi*frequency_carrier*time + modulation_index*sin(2*%pi*frequency_modulating*time));

//Visualization
figure;

//Modulating signal
subplot(3,1,1);
plot(time, modulating_signal, '-b', 'LineWidth', 1.5);
title('Modulating signal');
xlabel('Time (Seconds)');
ylabel('Amplitude');
//grid on;

//Carrier signal
subplot(3,1,2);
plot(time, carrier_signal, '-g', 'LineWidth', 1.5);
title('Carrier signal');
xlabel('Time (Seconds)');
ylabel('Amplitude');
//grid on;

//Modulated signal
subplot(3,1,3);
plot(time, modulated_signal, '-r', 'LineWidth', 1.5);
title('Modulated signal (AM)');
xlabel('Time (Seconds)');
ylabel('Amplitude');
//grid on;
