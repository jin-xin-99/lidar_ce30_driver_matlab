import ce30Sensor.*;  
import ce30PointCloud.*;  
import ce30Display.*;
%% ��ʼ��
ce30Sensor_obj = ce30Sensor;
ce30PointCloud_obj = ce30PointCloud;
ce30Display_obj = ce30Display;
%% ce30����
ce30Sensor_obj.ce30_Config;
ce30Sensor_obj.ce30_OpenPort;
ce30Sensor_obj.ce30_GetDistant;
ce30_obj = ce30Sensor_obj.ce30_udp_obj;
%% ѭ����ȡ����ʾ����
while isOpen(ce30Display_obj.pcdPlayer)
    tic
    ce30PointCloud_obj.ce30_ReadData(ce30_obj);  
    ce30PointCloud_obj.ce30_Raw2CartPolar;
    ce30Display_obj.ce30_PointCloudDisplay(ce30PointCloud_obj.preAllocatedCartMatrix);
    ce30Display_obj.ce30_DistantDisplay(ce30PointCloud_obj.preAllocatedDistantMatrix);
    toc
end 