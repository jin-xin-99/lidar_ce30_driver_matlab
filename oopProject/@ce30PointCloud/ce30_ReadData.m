function ce30_ReadData(obj, udp_obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_ReadData��
% @Brief    ��ȡһ����������֡��
% @Param    NONE��
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    i = 1;
    while(i <= 27 * obj.DATAPACK_NUM)
        obj.preAllocatedDataPack = fread(udp_obj);
        if(size(obj.preAllocatedDataPack, 1) == 816) % �������������� 
            obj.preAllocatedDataFrame(:, i) = obj.preAllocatedDataPack; 
            if(i > 1)
                if(obj.preAllocatedDataPack(811:814) ~= obj.preAllocatedDataFrame(811:814, i-1))
                    i = 1;
                    obj.preAllocatedDataFrame(:, i) = obj.preAllocatedDataPack; 
                end
            end            
        end
        i = i + 1;
    end
end  