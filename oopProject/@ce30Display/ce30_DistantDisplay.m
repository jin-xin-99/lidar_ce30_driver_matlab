function ce30_DistantDisplay(obj, distantMatrix)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_DistantDisplay��
% @Brief    ��ͼ��ķ�ʽ��ʾ�������
% @Param    ����������ԣ�DISTANT_PLAYER_MIN���������е���С���룬DISTANT_PLAYER_MAX���������е������룻
% @Retval	NONE��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    distantMatrix(distantMatrix < obj.DISTANT_PLAYER_MIN) = 0; 
    distantMatrix(distantMatrix > obj.DISTANT_PLAYER_MAX) = 0; 
    image(distantMatrix, 'CDataMapping', 'scaled');
    colorbar;
    title('�������ͼ')
end  