function algorithm_detect_pcsegdist(ptCloud)
% ����Ŀ��ʶ���㷨������ŷ����þ��뽫���ƻ���Ϊ��Ⱥ
%% ��������
minDistance = 0.5;
[labels,numClusters] = pcsegdist(ptCloud, minDistance);
pcshow(ptCloud.Location, labels)
colormap(hsv(numClusters))
end

