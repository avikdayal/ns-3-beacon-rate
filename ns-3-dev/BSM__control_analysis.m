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
filename_20n_control = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_control_20node.output2.csv';
filename_40n_control = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_control_40node.output2.csv';
filename_60n_control = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_control_60node.output2.csv';
filename_80n_control = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_control_80node.output2.csv';
filename_160n_control = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_control_160node.output2.csv';
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
fileID_control = fopen(filename_20n_control,'r');
fileID_40n_control = fopen(filename_40n_control,'r');
fileID_80n_control = fopen(filename_80n_control,'r');
fileID_160n_control = fopen(filename_160n_control,'r');
%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray_control = textscan(fileID_control, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_40n_control = textscan(fileID_40n_control, formatSpec_40n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_80n_control = textscan(fileID_80n_control, formatSpec_80n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_160n_control = textscan(fileID_160n_control, formatSpec_160n, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');


%% Close the text file.
fclose(fileID_control);
fclose(fileID_40n_control);
fclose(fileID_80n_control);
fclose(fileID_160n_control);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
safety_range=[50 100 150 200 250 300 350 400 450 500];


output_control=cell2mat(dataArray_control);
output_40n_control=cell2mat(dataArray_40n_control);
output_80n_control=cell2mat(dataArray_80n_control);
output_160n_control=cell2mat(dataArray_160n_control);
lp_PDR_control=output_control(1:10);
hp_PDR_control=output_control(11:20);
lp_PDR_40n_control=output_40n_control(1:10);
hp_PDR_40n_control=output_40n_control(11:20);
lp_PDR_80n_control=output_80n_control(1:10);
hp_PDR_80n_control=output_80n_control(11:20);
lp_PDR_160n_control=output_160n_control(1:10);
hp_PDR_160n_control=output_160n_control(11:20);

figure('rend','painters','pos',[10 10 700 500]);plot(safety_range(1:7), lp_PDR_control(1:7),'-or');title('Packet Delivery Ratio vs Distance Control');xlabel('Distance (m)');ylabel('Packet Delivery Ratio');
ylim([0.05 1.01])
hold on;
plot(safety_range(1:7), lp_PDR_40n_control(1:7),'-ob');
plot(safety_range(1:7), lp_PDR_80n_control(1:7),'-ok');
plot(safety_range(1:7), lp_PDR_160n_control(1:7),'-og');
plot(safety_range(1:7), hp_PDR_control(1:7),'-.xr');
plot(safety_range(1:7), hp_PDR_40n_control(1:7),'-.xb');
plot(safety_range(1:7), hp_PDR_80n_control(1:7),'-.xk');
plot(safety_range(1:7), hp_PDR_160n_control(1:7),'-.xg');
legend('20 nodes-Safe Nodes','40 nodes-Safe Nodes','80 nodes-Safe Nodes','160 nodes-Safe Nodes','20 nodes-At Risk Nodes','40 nodes-At Risk Nodes','80 nodes-At Risk Nodes','160 nodes-At Risk Nodes');

density=[20 40 80 160];
[safety_range(1) safety_range(3) safety_range(5) safety_range(7)];
lp_PDR_SR_1=[lp_PDR_control(1) lp_PDR_40n_control(1) lp_PDR_80n_control(1) lp_PDR_160n_control(1)];
lp_PDR_SR_3=[lp_PDR_control(3) lp_PDR_40n_control(3) lp_PDR_80n_control(3) lp_PDR_160n_control(3)];
lp_PDR_SR_5=[lp_PDR_control(5) lp_PDR_40n_control(5) lp_PDR_80n_control(5) lp_PDR_160n_control(5)];
lp_PDR_SR_7=[lp_PDR_control(7) lp_PDR_40n_control(7) lp_PDR_80n_control(7) lp_PDR_160n_control(7)];

hp_PDR_SR_1=[hp_PDR_control(1) hp_PDR_40n_control(1) hp_PDR_80n_control(1) hp_PDR_160n_control(1)];
hp_PDR_SR_3=[hp_PDR_control(3) hp_PDR_40n_control(3) hp_PDR_80n_control(3) hp_PDR_160n_control(3)];
hp_PDR_SR_5=[hp_PDR_control(5) hp_PDR_40n_control(5) hp_PDR_80n_control(5) hp_PDR_160n_control(5)];
hp_PDR_SR_7=[hp_PDR_control(7) hp_PDR_40n_control(7) hp_PDR_80n_control(7) hp_PDR_160n_control(7)];
figure('rend','painters','pos',[10 10 700 500]);plot(density, lp_PDR_SR_1,'-or');title('Packet Delivery Ratio vs Node Density Control');xlabel('Density(nodes/km)');ylabel('Packet Delivery Ratio');
ylim([0.05 1.01])
hold on;
plot(density, lp_PDR_SR_3,'-ob');
plot(density, lp_PDR_SR_5,'-ok');
plot(density, lp_PDR_SR_7,'-og');
plot(density, hp_PDR_SR_1,'-.xr');
plot(density, hp_PDR_SR_3,'-.xb');
plot(density, hp_PDR_SR_5,'-.xk');
plot(density, hp_PDR_SR_7,'-.xg');
%legend('20 nodes-.1 sec beacon rate','40 nodes-.1 sec beacon rate','80 nodes-.1 sec beacon rate','160 nodes-.1 sec beacon rate','20 nodes-.05 sec beacon rate','40 nodes-.05 sec beacon rate','80 nodes-.05 sec beacon rate','160 nodes-.05 sec beacon rate');
legend([num2str(safety_range(1)) ' m range-Risk Scheme-Safe Nodes'], [num2str(safety_range(3)) ' m range-Risk Scheme-Safe Nodes'], [num2str(safety_range(5)) ' m range-Risk Scheme-Safe Nodes'], [num2str(safety_range(7)) ' m range-Risk Scheme-Safe Nodes'], ...
[num2str(safety_range(1)) ' m range-Risk Scheme-At Risk Nodes'], [num2str(safety_range(3)) ' m range-Risk Scheme-At Risk Nodes'], [num2str(safety_range(5)) ' m range-Risk Scheme-At Risk Nodes'], [num2str(safety_range(7)) ' m range-Risk Scheme-At Risk Nodes']);

%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;