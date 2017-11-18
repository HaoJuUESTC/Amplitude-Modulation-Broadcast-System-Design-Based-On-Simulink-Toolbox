%{
%Plot_two_figures.m
%plot the waveform of the signal input and output
%}

function Plot_two_figures(SigTime,t,SigTimeOut,tOut)

figure;
subplot(2,2,1);
plot(t,SigTime), title('Voice Wave'),grid;
xlabel('Time(s)');
ylabel('Amplitude');
subplot(2,2,2);
plot(tOut, SigTimeOut), title('Voice Wave After'),grid;
xlabel('Time(s)');
ylabel('Amplitude');


%input
SigLength=length(SigTime);
Y = fft(SigTime,SigLength); 
halfLength = floor(SigLength/2);
SigFreqAmp =Y(1:halfLength + 1); 
SigFreqAmp = abs(SigFreqAmp);

Step=t(2)-t(1);
Fs=1/Step;
f = ((0:halfLength)+1)* Fs/SigLength; 

subplot(2,2,3);
plot(f,SigFreqAmp),title('Frequency Spectrum'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');

%output
SigLengthOut=length(tOut);
YOut = fft(SigTimeOut,SigLengthOut); 
halfLengthOut = floor(SigLengthOut/2);
SigFreqAmpOut =YOut(1:halfLengthOut + 1); 
SigFreqAmpOut = abs(SigFreqAmpOut);

StepOut=tOut(2)-tOut(1);
FsOut=1/StepOut;
fOut = ((0:halfLengthOut)+1)* FsOut/SigLengthOut; 

subplot(2,2,4);
plot(fOut,SigFreqAmpOut),title('Frequency Spectrum After'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');


