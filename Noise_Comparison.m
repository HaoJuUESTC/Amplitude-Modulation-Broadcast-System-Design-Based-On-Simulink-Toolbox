%{
Noise_Comparsison.m
Compare the influence of noise in time domain
%}
function Noise_Comparison(SigTime,SigTimeOut1,SigTimeOut2,t)
figure;

Step=t(2)-t(1);
Fs=1/Step;

subplot(3,1,1);
plot(t,SigTime),title('Voice Wave Without Noise'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,SigTimeOut1),title('Voice Wave With Moderate Noise'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,SigTimeOut2),title('Voice Wave With Enormous Noise'),grid;
xlabel('Time(s)');
ylabel('Amplitude');