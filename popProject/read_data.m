function receive_get = read_data(obj_ce30, PRE_DATAPACK, PRE_RECEIVE)
% read_data����Ŀ���ж�ȡ����
% obj���Ѿ��������ӵ�Ŀ��
% receive��������ɵ��״�ȫ������
%% ��������
    persistent save_index;
    save_index = 1;
    i = 1;
    while(i <= 27 * MacroDefine.DATAPACK_NUM)
        PRE_DATAPACK = fread(obj_ce30);
%         flushinput(obj_ce30);
        if(size(PRE_DATAPACK, 1) == 816) % �������������� 
            PRE_RECEIVE(:, i) = PRE_DATAPACK; 
            if(i > 1)
                if(PRE_DATAPACK(811:814) ~= PRE_RECEIVE(811:814, i-1))
                    i = 1;
                    PRE_RECEIVE(:, i) = PRE_DATAPACK; 
                end
            end            
        end
        i = i + 1;
    end

%     if length(unique(PRE_RECEIVE(811:814, :))) <= 4
% %         index_num = num2str(save_index);
% %         index = strcat(index_num, '.mat')
% %         save(index, PRE_RECEIVE);
% %         save_index = save_index + 1;
%     else
%         PRE_RECEIVE = zeros(816, 27 * MacroDefine.DATAPACK_NUM);
%     end
    receive_get = PRE_RECEIVE;
%     flushinput(obj_ce30);
end

