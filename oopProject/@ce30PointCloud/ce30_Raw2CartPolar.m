function ce30_Raw2CartPolar(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_Raw2CartPolar��
% @Brief    ��ȫ��ԭʼ����ת��Ϊ��Ҫ�����ͣ�
% @Param    NONE
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    indexCartMatrix = 1;
    indexCartPolar = 1;
    for p = 1: 1: 26
        for b = 1: 1: 12
            for s = 1: 1: 20
                obj.ce30_ExtractAngleDist(p, b, s);
                obj.ce30_Polar2Cart;
                obj.ce30_DataWrite(s, indexCartMatrix, indexCartPolar);
                indexCartMatrix = indexCartMatrix + 1;
            end
            indexCartPolar = indexCartPolar + 1;
        end
    end
    
    for b = 1: 1: 8
        for s = 1: 1: 20
            obj.ce30_ExtractAngleDist(27, b, s);
            obj.ce30_Polar2Cart;
            obj.ce30_DataWrite(s, indexCartMatrix, indexCartPolar);
            indexCartMatrix = indexCartMatrix + 1;  
        end
        indexCartPolar = indexCartPolar + 1;
    end
end     