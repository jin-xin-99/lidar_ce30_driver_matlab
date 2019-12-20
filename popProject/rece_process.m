function xyzPoints = rece_process(receiveAll, PRE_XYZPOINTS)
% rece_process���Խ��յ������ݽ��д���
% receive���ѽ��յ�����ԭʼ����
% data��������ɵ�����
%% ��������
    j = 1;
    for p = 1: 1: 26
        for b = 1: 1: 12
            for s = 1: 1: 20
                [PRE_XYZPOINTS(j, 1), PRE_XYZPOINTS(j, 2), PRE_XYZPOINTS(j, 3)] = polar2xyz(p, b, s, receiveAll);
                j = j + 1;
            end
        end
    end
    for b = 1: 1: 8
        for s = 1: 1: 20
            [PRE_XYZPOINTS(j, 1), PRE_XYZPOINTS(j, 2), PRE_XYZPOINTS(j, 3)] = polar2xyz(27, b, s, receiveAll);
            j = j + 1;
        end
    end
    xyzPoints = PRE_XYZPOINTS;
end

function [x, y, z] = polar2xyz(pack_idx, block_idx, sensor_idx, data_raw)
% polar2xyz���������ݰ������ݿ顢�й�Ԫ��λ�ã���������ת��Ϊxyz����
% pack_idx�����ݰ���1-27����360�����ݷ�Ϊ27�����ݰ�����
% block_idx�����ݿ飨1-12����ÿ�����ݰ��к���12�����ݿ�
% sensor_idx���й�Ԫ����1-20����ÿ�����ݿ麬��20���й�Ԫ�����ݺ�һ������ƫ���
%% ��������
    % ���㵽xyz����ϵ
    [Dist, angle_hori, angle_vert] = angleDist(pack_idx, block_idx, sensor_idx, data_raw);
    x = Dist * sind(90 - angle_vert) * cosd(angle_hori - 30);
    y = Dist * sind(90 - angle_vert) * sind(angle_hori - 30);
    z = Dist * cosd(90 - angle_vert);
end