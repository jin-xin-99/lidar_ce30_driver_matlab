function ce30_GetDistant(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_GetDistant��
% @Brief    ���ͻ�ȡ���ݵ����
% @Param    ���ԣ�CMD_GET_DISTANT����ȡ�������
% @Retval	NONE
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    fprintf(obj.ce30_udp_obj, obj.CMD_GET_DISTANT);
    flushinput(obj.ce30_udp_obj);
end