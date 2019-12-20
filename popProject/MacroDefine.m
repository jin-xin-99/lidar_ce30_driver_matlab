classdef MacroDefine
%%     
% MacroDefine:ͨ���������Եķ�ʽʵ�����ƺ궨��
%% 
    properties (Constant)
        GRAY_EN  =  'enableGrayOutput 1                                ';
        GRAY_DIS =  'enableGrayOutput 0                                ';
        GET_DIST =  'getDistanceAndAmplitudeSorted                     ';
        STOP_DIST = 'join                                              ';
        REMOTE_HOST = '192.168.1.80';
        REMOTE_PORT = 2368;
        IN_BUFF_SIZE = 816 * 27 * 10;
        IN_DATAPACK_SIZE = 816;
        PCD_PLAYER_X = [0, 10];
        PCD_PLAYER_Y = [-5, 5];
        PCD_PLAYER_Z = [-1, 1];
        TIMER_PERIOD = 0.6 / 30;
        ANGLE2RAD = pi / 180;
        RAD2ANGLE = 180 / pi;
        FILTER_R_INTENS = 100;
        FILTER_R_NUM = 5;
        DIST_MIN = 0;
        DIST_MAX = 2;
        DATAPACK_NUM = 1;
        ANGLE_HOR = 60;
        PIXEL_HOR = 320;
        ANGLE_VER = 4;
        PIXEL_VER = 20;
    end
% GRAY_EN��CE30ʹ�ܻҶ���Ϣָ��
% GRAY_DIS��CE30ʧ�ܻҶ���Ϣָ��
% GET_DIST��CE30���ָ��
% STOP_DIST��CE30ֹͣ���ָ��
% REMOTE_HOST��CE30Ĭ��IP��ַ+
% REMOTE_PORT��CE30Ĭ�϶˿�
% IN_BUFF_SIZE��UDPĬ�����뻺��
% IN_DATAPACK_SIZE��ÿ�����ݰ���С
% PCD_PLAYER_X��������ʾ��X�᷶Χ
% PCD_PLAYER_Y��������ʾ��Y�᷶Χ
% PCD_PLAYER_Z��������ʾ��Z�᷶Χ
% TIMER_PERIOD��UDP��������
% angle2rad:���� = �Ƕ� * angle2rad
% rad2angle:�Ƕ� = ���� * angle2rad
% FILTER_R_INTEN:�뾶�˲�ǿ�ȣ��뾶�����˲��뾶 = �˲�ǿ�� * �ֱ���
% FILTER_R_NUM:�뾶�˲���Χ�ڵĵ���
% DIST_MIN:�����˲���Сֵ
% DIST_MAX:�����˲����ֵ
% DATAPACK_NUM:һ�ζ������ݰ�������
% ANGLE_HOR:ˮƽ����
% PIXEL_HOR:ˮƽ����
% ANGLE_VER:��ֱ����
% PIXEL_VER:��ֱ����
end

