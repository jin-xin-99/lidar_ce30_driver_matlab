function ce30_DataWrite(obj, indexColumn, indexCartMatrix, indexCartPolar)    
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% @Func	  	ce30_DataWrite��
% @Brief    �����������д����������У�
% @Param    indexColumn����������indexCartMatrix���ѿ�������ϵ��������indexCartPolar��������ϵ������
% @Retval	�޸����Ե�ֵ��
% @Date     2019/11/21��
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%% ��������
    obj.preAllocatedCartMatrix(indexCartMatrix, 1) = obj.cartX; 
    obj.preAllocatedCartMatrix(indexCartMatrix, 2) = obj.cartY; 
    obj.preAllocatedCartMatrix(indexCartMatrix, 3) = obj.cartZ;                 
    obj.preAllocatedCartCell{indexColumn,indexCartPolar} = [obj.cartX, obj.cartY, obj.cartZ];
    obj.preAllocatedPolarCell{indexColumn,indexCartPolar} = [obj.polarDistant, obj.polarAngleHor, obj.polarAngleVer];
    obj.preAllocatedDistantMatrix(indexColumn,indexCartPolar) = obj.polarDistant;
end