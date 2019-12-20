function [UDP_obj] = udp_open(varargin)
% udp_open����UDP�˿ڲ�������뻺��
%% Ĭ�϶˿�����
    p = inputParser;
    DEFAULT_REMOTE_HOST = MacroDefine.REMOTE_HOST;
    DEFAULT_REMOTE_PORT = MacroDefine.REMOTE_PORT;
    p.addOptional('remote_host', DEFAULT_REMOTE_HOST, @isstring);
    p.addOptional('remote_port', DEFAULT_REMOTE_PORT);
    parse(p, varargin{:});
%% ��������
    % Ѱ��UDPĿ��
    UDP_obj = instrfind('Type', 'udp', 'RemoteHost', p.Results.remote_host, 'RemotePort', p.Results.remote_port, 'Tag', '');
    % ����UDPĿ��
    if isempty(UDP_obj)
        UDP_obj = udp(p.Results.remote_host, p.Results.remote_port);
    % ����رն˿����½���
    else
        fclose(UDP_obj);
        UDP_obj = UDP_obj(1);
    end
    % �򿪶˿�
    UDP_obj.InputBufferSize = MacroDefine.IN_BUFF_SIZE;
    UDP_obj.InputDatagramPacketSize = MacroDefine.IN_DATAPACK_SIZE;
    UDP_obj.TimerPeriod = MacroDefine.TIMER_PERIOD;
    fopen(UDP_obj);
    % ������뻺��
    flushinput(UDP_obj);
end