function ce30_OpenPort(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_OpenPort��
% @Brief    �����ݶ˿ڣ�
% @Param    NONE��
% @Retval	NONE
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    fopen(obj.ce30_udp_obj);
    flushinput(obj.ce30_udp_obj);  
end