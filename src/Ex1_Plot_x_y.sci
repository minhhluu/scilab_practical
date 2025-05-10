clc;
clear;

//Thông số tín hiệu
fm = 10; //tần số tín hiệu gốc (Hz)
fc = 100; //tần số sóng mang (Hz)
A = 1; //biên độ tín hiệu gốc
Ac = 1; //biên độ sóng mang
m = 0.5; //hệ số điều chế (0<m<1 để tránh méo tín hiệu)
fs = 1000; //Tần số lấy mẫu
T = 1; //Thời gian mô phỏng (giây)
t = 0:1/fs:T; //Trục thời gian

//tạo tín hiệu gốc (tín hiệu điều chế)
x = A*cos(2*%pi*fm*t);

//tạo sóng mang
carrier = Ac *cos(2*%pi*fc*t);

//Điều chế AM
y_am = Ac *(1+m*cos(2*%pi*fm*t)).*cos(2*%pi*fc*t);

//Vẽ đồ thị
subplot(3,1,1);
plot(t,x);
title("tín hiệu gốc");
xlabel("Thời gian (s)");
ylabel("biên độ");

subplot(3,1,2);
plot(t,carrier);
title("sóng mang");
xlabel("Thời gian (s)");
ylabel("biên độ");

subplot(3,1,3);
plot(t,y_am);
title("Tín hiệu AM với 0.5");
xlabel("Thời gian (s)");
ylabel("biên độ");

//Bài 2
m_values = [0.3,0.7,1.2];
figure(); 
for i=1:length(m_values)
    y_am_varied = Ac*(1+m_values(i)*cos(2*%pi*fm*t)).*cos(2*%pi*fc*t);
    subplot(3,1,i);
    plot(t,y_am_varied);
    title("Tín hiệu AM với m =" + string(m_values(i)));
    xlabel("Thời gian (s)");
    ylabel("Biên độ");
end
