# Amplitude-Modulation-Broadcast-System-Design-Based-On-Simulink-Toolbox
Course Design for Signal and Systems

Based on MATLAB R2014b.

Each Simulink module reads [t,SigTime] from the workspace as the input (t: time; SigTime: the signal input in time domain)
and gives out[tOut,SigTimeOut] 

Audio input samples in .wav format can be imported using Read_Voice.m

Run the whole system on AM.slx/Am_Multiple_Channels.slx
Variables can be changed in .slxfiles.

Write_Voice.m will transform the output into audio format.

Plotting functions (e.g. Plot_Two_Figures.m, Noise_Comparison.m, etc ) can be used to generate graphs
