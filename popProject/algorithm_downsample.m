function ptCloudDown = algorithm_downsample(ptCloud)
% ����Ŀ��ʶ���㷨������ŷ����þ��뽫���ƻ���Ϊ��Ⱥ
%% ��������
gridStep = 0.01;
ptCloudDown = pcdownsample(ptCloud, 'gridAverage', gridStep);
end
