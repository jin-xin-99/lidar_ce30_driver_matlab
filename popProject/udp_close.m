function udp_close(obj, varargin)
% udp_close���ر��ѽ�����UDP����
% obj��UDPĿ��
%% Ĭ������
    p = inputParser;
    DEFAULT_CMD = MacroDefine.STOP_DIST;
    p.addOptional('cmd', DEFAULT_CMD, @isstring);
    parse(p, varargin{:});
%% �ر�UDP����
    fprintf(obj, p.Results.cmd);
    flushinput(obj);
    fclose(obj);
end

