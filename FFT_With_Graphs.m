%{
FFT_With_Graphs.m
%}
function [SigFreqAmp,f]=FFT_With_Graphs(SigTime,t)

figure;


%sampling rate
Step=t(2)-t(1);
Fs=1/Step;


subplot(2,1,1);
plot(t,SigTime),title('Voice Wave'),grid;
xlabel('Time(s)');
ylabel('Amplitude');


SigLength=length(SigTime);
SigFreq=fft(SigTime,SigLength);
subplot(2,1,2);
halfLength = floor(SigLength/2);
SigFreqAmp =SigFreq(1:halfLength + 1);
SigFreqAmp = abs(SigFreqAmp);
f = ((0:halfLength)+1)* Fs/SigLength; 

plot(f,SigFreqAmp),title('Frequency Spectrum'),grid;

xlabel('Frequency(Hz)');
ylabel('Amplitude');

