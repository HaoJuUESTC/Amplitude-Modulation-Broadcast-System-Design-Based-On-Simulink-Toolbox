%{
Read_Voice.m
Read the wav signal
%}
%read ine voice input from n1-n2
%function [SigTime,t] = Read_Voice(sample_location,n1,n2)
%or all
function [SigTime,t] = Read_Voice(sample_location)
%sample_location :address of the voice input
%SigTime:time domain of sig. input
%t:variation of time
%n1,n2£ºseconds


%[SigTimeD, Fs] = audioread('Sample.wav');
[SigTimeD, Fs] =audioread(sample_location);

SigTime=SigTime(1:(1*Fs));
SigLength = length(SigTime); %Length of the signal

%sound(SigTime, Fs);
sound(SigTime, Fs);

%Plotting

t=(0:SigLength-1)/Fs; 
figure;
subplot(2,1,1);
plot(t, SigTime), title('Voice Wave'),grid;
xlabel('Time(s)');
ylabel('Amplitude');

Y=abs(fft(SigTime,SigLength)); 
f=(0:SigLength)* Fs/SigLength;
subplot(2,1,2);
plot(f,Y), title('Frequency Spectrum'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');

%Single Side Band:

Y = fft(SigTime,SigLength); 
halfLength = floor(SigLength/2);
Pyy =Y(1:halfLength + 1); 
Pyy = abs(Pyy);
f = ((0:halfLength)+1)* Fs/SigLength; 
subplot(2,1,2);
plot(f,Pyy), title('Frequency spectrum'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');
%}


Y = fft(SigTime,SigLength); 
halfLength = floor(SigLength/2);
SigFreqAmp =Y(1:halfLength + 1); 
SigFreqAmp = abs(SigFreqAmp);z
f = ((0:halfLength)+1)* Fs/SigLength; 
subplot(2,1,2);
plot(f,SigFreqAmp), title('Frequency Spectrum'),grid;
xlabel('Frequency(Hz)');
ylabel('Amplitude');
t=t';
f=f';

