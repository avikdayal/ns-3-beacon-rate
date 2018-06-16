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
filename_20n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_control_20node.output2.csv';
filename_40n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_control_40node.output2.csv';
filename_60n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_control_60node.output2.csv';
filename_80n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_control_80node.output2.csv';
filename_160n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_control_160node.output2.csv';
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
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_40n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_80n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_160n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';

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

BSM_PDR1 = dataArray{:, 1};
BSM_PDR2 = dataArray{:, 2};
BSM_PDR3 = dataArray{:, 3};
BSM_PDR4 = dataArray{:, 4};
BSM_PDR5 = dataArray{:, 5};
BSM_PDR6 = dataArray{:, 6};
BSM_PDR7 = dataArray{:, 7};
BSM_PDR8 = dataArray{:, 8};
BSM_PDR9 = dataArray{:, 9};
BSM_PDR10 = dataArray{:, 10};
HPBSM_PDR1 = dataArray{:, 11};
HPBSM_PDR2 = dataArray{:, 12};
HPBSM_PDR3 = dataArray{:, 13};
HPBSM_PDR4 = dataArray{:, 14};
HPBSM_PDR5 = dataArray{:, 15};
HPBSM_PDR6 = dataArray{:, 16};
HPBSM_PDR7 = dataArray{:, 17};
HPBSM_PDR8 = dataArray{:, 18};
HPBSM_PDR9 = dataArray{:, 19};
HPBSM_PDR10 = dataArray{:, 20};
AverageRoutingGoodputKbps = dataArray{:, 21};
MacPhyOverheadTotalTxbytesTotalTxHPbytes = dataArray{:, 22};
VarName23 = dataArray{:, 23};
VarName24 = dataArray{:, 24};
output=cell2mat(dataArray);
output_40n=cell2mat(dataArray_40n);
output_80n=cell2mat(dataArray_80n);
output_160n=cell2mat(dataArray_160n);
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
legend('20 nodes-Safe Nodes','40 nodes-Safe Nodes','80 nodes-Safe Nodes','160 nodes-Safe Nodes','20 nodes-At Risk Nodes','40 nodes-At Risk Nodes','80 nodes-At Risk Nodes','160 nodes-At Risk Nodes');


%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;