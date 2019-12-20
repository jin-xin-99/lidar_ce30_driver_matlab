clear; clc; close all;
%% Ԥ�����ڴ�
PRE_RECEIVE = zeros(816, 27 * MacroDefine.DATAPACK_NUM);
PRE_DATAPACK = zeros(816, 1);
PRE_XYZPOINTS = zeros(6400, 3 * MacroDefine.DATAPACK_NUM);
PCDPLAYER = pcplayer(MacroDefine.PCD_PLAYER_X, MacroDefine.PCD_PLAYER_Y, MacroDefine.PCD_PLAYER_Z);
gridStep = 0.01;
%% UDP��ʼ��
obj_ce30 = udp_open;
fprintf(obj_ce30, MacroDefine.GRAY_DIS);
fprintf(obj_ce30, MacroDefine.GET_DIST);
%% ������ʾ
while isOpen(PCDPLAYER)
    tic
    receiveAll = read_data(obj_ce30, PRE_DATAPACK, PRE_RECEIVE);
    xyzPoints = rece_process(receiveAll, PRE_XYZPOINTS);             
    ptCloud = pointCloud(xyzPoints);
%     ptCloudDown = pcdownsample(ptCloud, 'gridAverage', gridStep);   
    view(PCDPLAYER, ptCloud);
%     algorithm1_dist(ptCloud);
    toc
end 
%% �ر�UDP
udp_close(obj_ce30);