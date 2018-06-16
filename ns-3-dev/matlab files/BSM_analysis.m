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
filename_10n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_10node.output2.csv';
filename_50n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_50node.output2.csv';
filename_100n = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-RA-simulation/ns-3-dev/bsm_100node.output2.csv';
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
formatSpec_50n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';
formatSpec_100n = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f';

%% Open the text file.
fileID = fopen(filename_10n,'r');
fileID_50n = fopen(filename_50n,'r');
fileID_100n = fopen(filename_100n,'r');
%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_50n = textscan(fileID_50n, formatSpec_50n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_100n = textscan(fileID_100n, formatSpec_100n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID);

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
output_50n=cell2mat(dataArray_50n);
output_100n=cell2mat(dataArray_100n);
lp_PDR=output(1:9);
hp_PDR=output(10:20);
lp_PDR_50n=output_50n(1:9);
hp_PDR_50n=output_50n(10:20);
lp_PDR_100n=output_100n(1:9);
hp_PDR_100n=output_100n(10:20);

figure;plot(safety_range(1:7), lp_PDR(1:7),'ro');title('Packet Delivery Ratio vs Distance');xlabel('Distance (m^2)');ylabel('Packet Delivery Ratio');
hold on;
plot(safety_range(1:7), lp_PDR_50n(1:7),'bo');
plot(safety_range(1:7), lp_PDR_100n(1:7),'go');
plot(safety_range(1:7), hp_PDR(1:7),'rx');
plot(safety_range(1:7), hp_PDR_50n(1:7),'bx');
plot(safety_range(1:7), hp_PDR_100n(1:7),'gx');
legend('10 nodes-.1 sec beacon rate','50 nodes-.1 sec beacon rate','100 nodes-.1 sec beacon rate','10 nodes-.05 sec beacon rate','50 nodes-.05 sec beacon rate','100 nodes-.05 sec beacon rate');


%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;