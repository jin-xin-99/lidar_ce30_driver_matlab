classdef ce30Sensor < handle
    properties(Constant)
        CMD_GRAY_ENABLE  =  'enableGrayOutput 1                                ';
        CMD_GRAY_DISABLE =  'enableGrayOutput 0                                ';
        CMD_GET_DISTANT =   'getDistanceAndAmplitudeSorted                     ';
        CMD_STOP_DISTANT =  'join                                              ';   
        REMOTE_HOST = '192.168.1.80';
        REMOTE_PORT = 2368;
        IN_BUFF_SIZE = 816 * 27 * 10;
        IN_DATAPACK_SIZE = 816;      
        SAMPLE_PERIOD = 0.6 / 30;
    end
    
    properties 
        ce30_udp_obj;
        ce30RawDataBlock;
        ce30RawDataPack;
        ce30RawDataFrame;
    end
    
    methods       
        function obj = ce30Sensor
            % Ѱ��UDPĿ��
            obj.ce30_udp_obj = instrfind('Type', 'udp', 'RemoteHost', obj.REMOTE_HOST, 'RemotePort', obj.REMOTE_PORT, 'Tag', '');
            % ����UDPĿ��
            if isempty(obj.ce30_udp_obj)
                obj.ce30_udp_obj = udp(obj.REMOTE_HOST, obj.REMOTE_PORT);
            % ����رն˿����½���
            else
                fclose(obj.ce30_udp_obj);
                obj.ce30_udp_obj = obj.ce30_udp_obj(1);
            end
        end    
    end
    
    methods
        ce30_Config(obj);       
        ce30_PreAllocatedMemory(obj);       
        ce30_OpenPort(obj);        
        ce30_GetDistant(obj);        
        ce30_StopDistant(obj);
        ce30_ClosePort(obj);
    end
end 