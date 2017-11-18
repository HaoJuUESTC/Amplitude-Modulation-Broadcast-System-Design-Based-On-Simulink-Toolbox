%{
Draw_Four_Figures.m
Signals in 4 channels
%}
function Draw_Four_Figures(SigTime1,SigTime2,SigTime3,SigTime4,t)
figure;

Step=t(2)-t(1);
Fs=1/Step;

SigLength=length(SigTime1);
halfLength = floor(SigLength/2);
f = ((0:halfLength)+1)* Fs/SigLength;

subplot(4,2,1);
plot(t,SigTime1),title('Time domain: Channel One'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,2,2);
SigFreq1=fft(SigTime1,SigLength);
SigFreqAmp1 =abs(SigFreq1(1:halfLength + 1));
plot(f,SigFreqAmp1),title('Frequency Spectrum: Channel One'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');

subplot(4,2,3);
plot(t,SigTime2),title('Time domain: Channel Two'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,2,4);
SigFreq2=fft(SigTime2,SigLength);
SigFreqAmp2 =abs(SigFreq2(1:halfLength + 1));
plot(f,SigFreqAmp2),title('Frequency Spectrum: Channel Two'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');

subplot(4,2,5);
plot(t,SigTime3),title('Time domain: Channel Three'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,2,6);
SigFreq3=fft(SigTime3,SigLength);
SigFreqAmp3 =abs(SigFreq3(1:halfLength + 1));
plot(f,SigFreqAmp3),title('Frequency Spectrum: Channel Three'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');

subplot(4,2,7);
plot(t,SigTime4),title('Time domain: Channel Four'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,2,8);
SigFreq4=fft(SigTime4,SigLength);
SigFreqAmp4 =abs(SigFreq4(1:halfLength + 1));
plot(f,SigFreqAmp4),title('Frequency Spectrum: Channel Four'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');