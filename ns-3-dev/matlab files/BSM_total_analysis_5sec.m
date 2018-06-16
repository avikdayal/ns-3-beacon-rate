%% Import data from text file.
% Script for importing data from the following text file:
%
%    /Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_10node.output2.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2018/05/01 12:59:04
clear all;
close all;
%% Initialize variables.
filename_20n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_20node_5sec.output.csv';
filename_40n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_40node_5sec.output.csv';
filename_60n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_60node_5sec.output.csv';
filename_80n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_80node_5sec.output.csv';
filename_160n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_160node_5sec.output.csv';
delimiter = ',';
startRow = 2;

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
%	column8: double (%f)
%   column9: double (%f)
%	column10: double (%f)
%   column11: double (%f)
%	column12: double (%f)
%   column13: double (%f)
%	column14: double (%f)
%   column15: double (%f)
%	column16: double (%f)
%   column17: double (%f)
%	column18: double (%f)
%   column19: double (%f)
%	column20: double (%f)
%   column21: double (%f)
%	column22: double (%f)
%   column23: double (%f)
%	column24: double (%f)
% For more information, see the TEXTSCAN documentation.
%formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec = '%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_40n = '%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_80n = '%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_160n = '%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
%formatSpec_40n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
%formatSpec_80n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
%formatSpec_160n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';

%% Open the text file.
fileID = fopen(filename_20n,'r');
fileID_40n = fopen(filename_40n,'r');
fileID_80n = fopen(filename_80n,'r');
fileID_160n = fopen(filename_160n,'r');
%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_40n = textscan(fileID_40n, formatSpec_40n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_80n = textscan(fileID_80n, formatSpec_80n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_160n = textscan(fileID_160n, formatSpec_160n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');


%% Close the text file.
fclose(fileID);
fclose(fileID_40n);
fclose(fileID_80n);
fclose(fileID_160n);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
safety_range=[50 100 150 200 250 300 350 400 450 500];

SimulationSecond = dataArray{:, 1};
ReceiveRate = dataArray{:, 2};
PacketsReceived = dataArray{:, 3};
NumberOfSinks = dataArray{:, 4};
RoutingProtocol = dataArray{:, 5};
TransmissionPower = dataArray{:, 6};
WavePktsSent = dataArray{:, 7};
WavePtksReceived = dataArray{:, 8};
HPWavePtksReceived = dataArray{:, 9};
WavePktsPpr = dataArray{:, 10};
ExpectedWavePktsReceived = dataArray{:, 11};
ExpectedHPWavePktsReceived = dataArray{:, 12};
ExpectedWavePktsInCoverageReceived = dataArray{:, 13};
ExpectedHPWavePktsInCoverageReceived = dataArray{:, 14};
BSM_PDR1 = dataArray{:, 15};
BSM_PDR2 = dataArray{:, 16};
BSM_PDR3 = dataArray{:, 17};
BSM_PDR4 = dataArray{:, 18};
BSM_PDR5 = dataArray{:, 19};
BSM_PDR6 = dataArray{:, 20};
BSM_PDR7 = dataArray{:, 21};
BSM_PDR8 = dataArray{:, 22};
BSM_PDR9 = dataArray{:, 23};
BSM_PDR10 = dataArray{:, 24};
HPBSM_PDR1 = dataArray{:, 25};
HPBSM_PDR2 = dataArray{:, 26};
HPBSM_PDR3 = dataArray{:, 27};
HPBSM_PDR4 = dataArray{:, 28};
HPBSM_PDR5 = dataArray{:, 29};
HPBSM_PDR6 = dataArray{:, 30};
HPBSM_PDR7 = dataArray{:, 31};
HPBSM_PDR8 = dataArray{:, 32};
HPBSM_PDR9 = dataArray{:, 33};
HPBSM_PDR10 = dataArray{:, 34};
MacPhyOverheadTotalTxbytesTotalTxHPbytes = dataArray{:, 35};
VarName36 = dataArray{:, 36};
VarName37 = dataArray{:, 37};
output=[];
for i=15:34
    temp=dataArray{:, i};
    output=[output mean(temp(length(temp)/2:length(temp)))];
end
output_40n=[];
for i=15:34
    temp=dataArray_40n{:, i};
    output_40n=[output_40n mean(temp(length(temp)/2:length(temp)))];
end
output_80n=[];
for i=15:34
    temp=dataArray_80n{:, i};
    output_80n=[output_80n mean(temp(length(temp)/2:length(temp)))];
end
output_160n=[];
for i=15:34
    temp=dataArray_160n{:, i};
    output_160n=[output_160n mean(temp(length(temp)/2:length(temp)))];
end
%output=cell2mat(dataArray);
% output_40n=cell2mat(dataArray_40n);
% output_80n=cell2mat(dataArray_80n);
% output_160n=cell2mat(dataArray_160n);
lp_PDR=output(1:10);
hp_PDR=output(11:20);
lp_PDR_40n=output_40n(1:10);
hp_PDR_40n=output_40n(11:20);
lp_PDR_80n=output_80n(1:10);
hp_PDR_80n=output_80n(11:20);
lp_PDR_160n=output_160n(1:10);
hp_PDR_160n=output_160n(11:20);

figure;plot(safety_range(1:7), lp_PDR(1:7),'-or');title('Packet Delivery Ratio vs Distance');xlabel('Distance (m^2)');ylabel('Packet Delivery Ratio');
hold on;
plot(safety_range(1:7), lp_PDR_40n(1:7),'-ob');
plot(safety_range(1:7), lp_PDR_80n(1:7),'-ok');
plot(safety_range(1:7), lp_PDR_160n(1:7),'-og');
plot(safety_range(1:7), hp_PDR(1:7),'-.xr');
plot(safety_range(1:7), hp_PDR_40n(1:7),'-.xb');
plot(safety_range(1:7), hp_PDR_80n(1:7),'-.xk');
plot(safety_range(1:7), hp_PDR_160n(1:7),'-.xg');
legend('20 nodes-.1 sec beacon rate','40 nodes-.1 sec beacon rate','80 nodes-.1 sec beacon rate','160 nodes-.1 sec beacon rate','20 nodes-.05 sec beacon rate','40 nodes-.05 sec beacon rate','80 nodes-.05 sec beacon rate','160 nodes-.05 sec beacon rate');


%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;