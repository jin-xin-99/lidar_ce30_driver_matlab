function ce30_PreAllocatedMemory(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_PreAllocatedMemory��
% @Brief    ��ǰ�������ݿռ䣻
% @Param    NONE��
% @Retval	NONE
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    obj.preAllocatedDataPack = zeros(816, 1);
    obj.preAllocatedDataFrame = zeros(816, 27 * obj.DATAPACK_NUM);
end