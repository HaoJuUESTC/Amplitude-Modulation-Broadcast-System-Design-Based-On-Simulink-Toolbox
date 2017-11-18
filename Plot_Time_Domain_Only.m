%{
Plot_Time_Domain_Only.m
%}

function Plot_Time_Domain_Only(SigTime,t,SigTimeOut,tOut)
figure;
subplot(2,1,1);
plot(t,SigTime), title('Voice Wave');
xlabel('Time/s');
ylabel('Amplitude');
subplot(2,1,2);
plot(tOut, SigTimeOut), title('Voice Wave After');
xlabel('Time/s');
ylabel('Amplitude');