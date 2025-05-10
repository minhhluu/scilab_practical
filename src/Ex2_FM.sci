am = 1; //biên độ tín hiệu gốc
fm = 5; //tần số tín hiệu gốc (Hz)
fc = 50;//tần số sóng mang (Hz)
ac = .5; //biên độ sóng mang
m = 2; //hệ số điều chế (0<m<1 để tránh méo tín hiệu)
fs = 1000; //tần số lấy mẫu
T = 1; //thời gian mô phỏng (s)

//Điều chế tín hiệu (tín hiệu âm thanh)
Ms = am *sin(2*%pi*fm*t);

//sóng mang
Cs = ac *sin(2*%pi*fc*t);

//điều chế tần số 
Ms = ac *sin(2*%pi*fc*t+m*sin(2*%pi*fm*t));

//vẽ đồ thị
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
