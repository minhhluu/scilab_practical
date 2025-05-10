frequency = 1;
duration = 2;
sampling_rate = 1000;
//Time vector
time = 0:1/sampling_rate:duration;

//Digital square wave generation
square_wave = squarewave(2*%pi*frequency*time);

//Visualization
figure;
subplot(2,1,1);
plot(time,square_wave,'b','LineWidth',2);
title('Digital Square Wave Signal');
xlabel('Time(seconds)');
ylabel('Amplitude');
grid on;

//Display digital signal values
subplot(2,1,2);
plot(time, square_wave,'r','LineWidth',1.5);
xlabel('Time(seconds)');
ylabel('Amplitude');
grid on;
