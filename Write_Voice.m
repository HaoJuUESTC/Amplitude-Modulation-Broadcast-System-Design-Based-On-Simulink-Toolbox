%{
Write_Voice.m
%}
function Write_Voice(storage_location,SigTime,t)
%storage_location: e.g.
%'F:\matlab\Sig&Sys\output.wav'

Step0=t(2)-t(1);
Fs0=1/Step0;%sampling freq of the inputsignal
audiowrite(storage_location,SigTime,Fs0);

%Fs=44100;%new sampling freq, taken the sampling freq of mp3 format
%[SigTimeD, Fs] =audioread(sample_location);


