function ce30_Config(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_Config��
% @Brief    ��ʼ��ce30��ͨ�����ã�
% @Param    ���ԣ�IN_BUFF_SIZE�����뻺���С��IN_BUFF_SIZE��һ�����ݰ���С��SAMPLE_PERIOD����������
% @Retval	NONE
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    obj.ce30_udp_obj.InputBufferSize = obj.IN_BUFF_SIZE;
    obj.ce30_udp_obj.InputDatagramPacketSize = obj.IN_DATAPACK_SIZE;
    obj.ce30_udp_obj.TimerPeriod = obj.SAMPLE_PERIOD;
end