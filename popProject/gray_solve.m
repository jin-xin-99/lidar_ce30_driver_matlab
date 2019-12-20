function gray = gray_solve(pack_idx, block_idx, sensor_idx, data_raw)
% angleDist���������ݰ������ݿ顢�й�Ԫ��λ�ã����㼫�����еľ���ͽǶ�
% pack_idx�����ݰ���1-27����360�����ݷ�Ϊ27�����ݰ�����
% block_idx�����ݿ飨1-12����ÿ�����ݰ��к���12�����ݿ�
% sensor_idx���й�Ԫ����1-20����ÿ�����ݿ麬��20���й�Ԫ�����ݺ�һ������ƫ���
%% ��������
    % ԭʼ���ݵ��У�Ҳ���ǵڼ������ݰ�
    table_column = pack_idx;
    % �Ҷ���Ϣ��һ�ֽ�λ�� = ����ͷ��43Byte�� + ���ݿ�λ�ã�(block_idx - 1) * 64Byte) ...
    ... + ʶ����(2Byte) + ����ƫ���(2Byte) + �й�Ԫ��λ��(1���й�Ԫ��3Byte)
    gray1_posi = 43 + (block_idx - 1) * 64 + 4 + (sensor_idx - 1) * 3;
    gray2_posi = gray1_posi + 1;
    % ����Ҷ���Ϣ
    gray1 = data_raw(gray1_posi, table_column);
    gray2 = data_raw(gray2_posi, table_column);
    % �Ҷ���Ϣ = (������Ϣ�ڶ��ֽ� * 16 * 16) * 2 / 1000;
    gray = (gray2 * 16 * 16 + gray1) * 2 / 1000;
end

