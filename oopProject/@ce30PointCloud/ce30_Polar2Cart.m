function ce30_Polar2Cart(obj)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_Polar2Cart��
% @Brief    ������������ת��Ϊ�ѿ�������ϵ��
% @Param    ���ԣ�polarDistant��������polarAngleHor��ˮƽ���򼫽ǣ�polarAngleVer����ֱ���򼫽ǣ�
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    % ���㵽xyz����ϵ
    obj.cartX = obj.polarDistant * sind(90 - obj.polarAngleVer) * cosd(obj.polarAngleHor - 30);
    obj.cartY = obj.polarDistant * sind(90 - obj.polarAngleVer) * sind(obj.polarAngleHor - 30);
    obj.cartZ = obj.polarDistant * cosd(90 - obj.polarAngleVer);
end