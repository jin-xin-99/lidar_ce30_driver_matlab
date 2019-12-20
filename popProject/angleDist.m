function [Dist, angle_hori, angle_vert] = angleDist(pack_idx, block_idx, sensor_idx, data_raw)
%angleDist���������ݰ������ݿ顢�й�Ԫ��λ�ã����㼫�����еľ���ͽǶ�
% pack_idx�����ݰ���1-27����360�����ݷ�Ϊ27�����ݰ�����
% block_idx�����ݿ飨1-12����ÿ�����ݰ��к���12�����ݿ�
% sensor_idx���й�Ԫ����1-20����ÿ�����ݿ麬��20���й�Ԫ�����ݺ�һ������ƫ���
%% ��������
    % ԭʼ���ݵ��У�Ҳ���ǵڼ������ݰ�
    table_column = pack_idx;
    % ����ƫ���λ�� = ����ͷ��43Byte�� + ���ݿ�λ�ã�(block_idx - 1) * 64Byte) + ʶ����(2Byte)
    angle_hori1_posi =  43 + (block_idx - 1) * 64 + 2;
    angle_hori2_posi =  43 + (block_idx - 1) * 64 + 2 + 1;
    % �������ƫ���
    angle_hori1 = data_raw(angle_hori1_posi, table_column);
    angle_hori2 = data_raw(angle_hori2_posi, table_column);
    % ����ƫ��� = (����ƫ��ǵڶ��ֽ� * 16 * 16 + ����ƫ��ǵ�һ�ֽ�) / 100;
    angle_hori = (angle_hori2 * 16 * 16 + angle_hori1) / 100;
    % ����ƫ��� = ���ֵ - ʵ���� * 0.2
    angle_vert = 2.1 - sensor_idx * 0.2;
    % ������Ϣ��һ�ֽ�λ�� = ����ͷ��43Byte�� + ���ݿ�λ�ã�(block_idx - 1) * 64Byte) ...
    ... + ʶ����(2Byte) + ����ƫ���(2Byte) + �й�Ԫ��λ��(1���й�Ԫ��3Byte)
    dist1_posi = 43 + (block_idx - 1) * 64 + 4 + (sensor_idx - 1) * 3;
    dist2_posi = dist1_posi + 1;
    % ���������Ϣ
    dist1 = data_raw(dist1_posi, table_column);
    dist2 = data_raw(dist2_posi, table_column);
    % ������Ϣ = (������Ϣ�ڶ��ֽ� * 16 * 16) * 2 / 1000;
    Dist = (dist2 * 16 * 16 + dist1) * 2 / 1000;
    if(Dist < MacroDefine.DIST_MIN)
        Dist = 0;
    elseif(Dist > MacroDefine.DIST_MAX)
        Dist = 0;
    end
    % ��ʶλ = ������Ϣ�ڶ��ֽ�λ�� + 1��
    sig = data_raw(dist2_posi + 1, table_column);
    if sig ~= 0
        Dist = 0;
    end
end

