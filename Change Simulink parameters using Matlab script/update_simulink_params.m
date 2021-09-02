clc;
close all;
clear all;

%Open and run the simulink model before running this script. 

% You can also see the model in text file using the command 
% edit('sim_model.mdl') . edit() function works on .mdl file

get_param('sim_model/Gain1','Gain');
set_param('sim_model/Gain1','Gain','50')

for gainVal = 0:50
    gainVal
    set_param('sim_model/Gain1','Gain',int2str(gainVal))
    pause(2);
end
