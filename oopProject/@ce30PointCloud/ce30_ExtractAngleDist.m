function ce30_ExtractAngleDist(obj, packIdx, blockIdx, sensorIdx)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_ExtractAngleDist��
% @Brief    ��ԭʼ��������ȡ�ǶȺ;�����Ϣ��
% @Param    angleDist���������ݰ������ݿ顢�й�Ԫ��λ�ã����㼫�����еľ���ͽǶ�
%           pack_idx�����ݰ���1-27����360�����ݷ�Ϊ27�����ݰ�����
%           block_idx�����ݿ飨1-12����ÿ�����ݰ��к���12�����ݿ�
%           sensor_idx���й�Ԫ����1-20����ÿ�����ݿ麬��20���й�Ԫ�����ݺ�һ������ƫ���
% @Retval	NONE��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    % ԭʼ���ݵ��У�Ҳ���ǵڼ������ݰ�
    table_column = packIdx;
    % ����ƫ���λ�� = ����ͷ��43Byte�� + ���ݿ�λ�ã�(block_idx - 1) * 64Byte) + ʶ����(2Byte)
    angleHor1Pos =  43 + (blockIdx - 1) * 64 + 2;
    angleHor2Pos =  43 + (blockIdx - 1) * 64 + 2 + 1;
    % �������ƫ���
    angleHor1 = obj.preAllocatedDataFrame(angleHor1Pos, table_column);
    angleHor2 = obj.preAllocatedDataFrame(angleHor2Pos, table_column);
    % ����ƫ��� = (����ƫ��ǵڶ��ֽ� * 16 * 16 + ����ƫ��ǵ�һ�ֽ�) / 100;
    obj.polarAngleHor = (angleHor2 * 16 * 16 + angleHor1) / 100;
    % ����ƫ��� = ���ֵ - ʵ���� * 0.2
    obj.polarAngleVer = 2.1 - sensorIdx * 0.2;
    % ������Ϣ��һ�ֽ�λ�� = ����ͷ��43Byte�� + ���ݿ�λ�ã�(block_idx - 1) * 64Byte) ...
    ... + ʶ����(2Byte) + ����ƫ���(2Byte) + �й�Ԫ��λ��(1���й�Ԫ��3Byte)
    dist1Posi = 43 + (blockIdx - 1) * 64 + 4 + (sensorIdx - 1) * 3;
    dist2Posi = dist1Posi + 1;
    % ���������Ϣ
    dist1 = obj.preAllocatedDataFrame(dist1Posi, table_column);
    dist2 = obj.preAllocatedDataFrame(dist2Posi, table_column);
    % ������Ϣ = (������Ϣ�ڶ��ֽ� * 16 * 16) * 2 / 1000;
    obj.polarDistant = (dist2 * 16 * 16 + dist1) * 2 / 1000;
    if(obj.polarDistant < obj.DIST_MIN)
        obj.polarDistant = 0;
    elseif(obj.polarDistant > obj.DIST_MAX)
        obj.polarDistant = 0;
    end
    % ��ʶλ = ������Ϣ�ڶ��ֽ�λ�� + 1;
    sig = obj.preAllocatedDataFrame(dist2Posi + 1, table_column);
    if sig ~= 0
        obj.polarDistant = 0;
    end
end    

