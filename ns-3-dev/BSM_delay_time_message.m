%% Import data from text file.
% Script for importing data from the following text file:
%
%    /Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_20node_5sec.output3.csv_msgStats2.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2018/05/30 13:05:33
clear all;
close all;
%% Initialize variables.
filename = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_20node_5sec.output3.csv_msgStats2.csv';
delimiter = ',';
startRow = 2;
filename_40 = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_40node_5sec.output3.csv_msgStats2.csv';
filename_80 = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_80node_5sec.output3.csv_msgStats2.csv';
filename_160 = '/Users/avikdayal/Google-Drive/PHD-Thesis/ARL-work/ns-3-beacon-rate/ns-3-dev/bsm_160node_5sec.output3.csv_msgStats2.csv';

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');
fileID_40 = fopen(filename_40,'r');
fileID_80 = fopen(filename_80,'r');
fileID_160 = fopen(filename_160,'r');
%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_40 = textscan(fileID_40, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_80 = textscan(fileID_80, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_160 = textscan(fileID_160, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID);
fclose(fileID_40);
fclose(fileID_80);
fclose(fileID_160);
%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
MsgID1 = dataArray{:, 1};
hp2hp_count = dataArray{:, 2};
hp_count = dataArray{:, 3};
lp_count = dataArray{:, 4};
hp2hp_delay_msg = dataArray{:, 5};
hp_delay_msg = dataArray{:, 6};
lp_delay_msg = dataArray{:, 7};

hp2hp_delay_msg_40 = dataArray_40{:, 5};
hp_delay_msg_40 = dataArray_40{:, 6};
lp_delay_msg_40 = dataArray_40{:, 7};

hp2hp_delay_msg_80 = dataArray_80{:, 5};
hp_delay_msg_80 = dataArray_80{:, 6};
lp_delay_msg_80 = dataArray_80{:, 7};

hp2hp_delay_msg_160 = dataArray_160{:, 5};
hp_delay_msg_160 = dataArray_160{:, 6};
lp_delay_msg_160 = dataArray_160{:, 7};

hp2hp_delay_msg(find(hp_delay_msg==-1))=[];
hp_delay_msg(find(hp_delay_msg==-1))=[];
lp_delay_msg(find(lp_delay_msg==-1))=[];

hp2hp_delay_msg_40(find(hp_delay_msg_40==-1))=[];
hp_delay_msg_40(find(hp_delay_msg_40==-1))=[];
lp_delay_msg_40(find(lp_delay_msg_40==-1))=[];

hp2hp_delay_msg_80(find(hp_delay_msg_80==-1))=[];
hp_delay_msg_80(find(hp_delay_msg_80==-1))=[];
lp_delay_msg_80(find(lp_delay_msg_80==-1))=[];

hp2hp_delay_msg_160(find(hp_delay_msg_160==-1))=[];
hp_delay_msg_160(find(hp_delay_msg_160==-1))=[];
lp_delay_msg_160(find(lp_delay_msg_160==-1))=[];

node_d=[20 40 80 160];
hp2hp_sec=[mean(hp2hp_delay_msg) mean(hp2hp_delay_msg_40) mean(hp2hp_delay_msg_80) mean(hp2hp_delay_msg_160)];
hp_sec=[mean(hp_delay_msg) mean(hp_delay_msg_40) mean(hp_delay_msg_80) mean(hp_delay_msg_160)];
lp_sec=[mean(lp_delay_msg) mean(lp_delay_msg_40) mean(lp_delay_msg_80) mean(lp_delay_msg_160)];

figure('rend','painters','pos',[10 10 700 500]);
plot(node_d,hp2hp_sec, '-.xr'); ylabel('Average delay (ms)'); xlabel('Node Density'); title('Difference b/w Adaptive and Control Packets vs Node Density');
hold on;
plot(node_d,hp_sec,'-.xb');%ylabel('Packets'); xlabel('Node Density'); 
plot(node_d,lp_sec,'-.xk');%ylabel('Packets'); xlabel('Node Density'); 
hold off;
legend('High Priority to High Priority Packets','High Priority to Low Priority Packets','Low Priority to Low Priority Packets')
display(['number of hp2hpmessages: ' length(hp2hp_delay_msg)] );
display(['number of hpmessages: ' length(hp_delay_msg)] );
display(['number of lpmessages: ' length(lp_delay_msg)] );
%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;