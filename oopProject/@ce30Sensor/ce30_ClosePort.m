function ce30_ClosePort(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_ClosePort��
% @Brief    �ر�ce30�Ķ˿ڣ�
% @Param    NONE
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    flushinput(obj.ce30_udp_obj); 
    fclose(obj.ce30_udp_obj); 
end  