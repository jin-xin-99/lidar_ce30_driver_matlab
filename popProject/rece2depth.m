function [data] = rece2depth(receive)
% rece_process���Խ��յ������ݽ��д���
% receive���ѽ��յ�����ԭʼ����
% data��������ɵ�����
%% ��������
    data = zeros(20, 320);
    i = 1;
    j = 1;
    for p = 1: 1: 26
        for b = 1: 1: 12
            for s = 1: 1: 20
                data(i, j) = gray_solve(p, b, s, receive);
                i = i + 1;
            end
            i = 1;
            j = j + 1;
        end
        i = 1;
    end 
    
    for b = 1: 1: 8
        for s = 1: 1: 20
            data(i, j) = gray_solve(27, b, s, receive);
            i = i + 1;
        end
        i = 1;
        j = j + 1;
    end
end
