function ce30_StopDistant(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_StopDistant��
% @Brief    ����ֹͣ������
% @Param    ���ԣ�CMD_STOP_DISTANT��ֹͣ������
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    flushinput(obj.ce30_udp_obj);            
    fprintf(obj.ce30_udp_obj, obj.CMD_STOP_DISTANT);
end