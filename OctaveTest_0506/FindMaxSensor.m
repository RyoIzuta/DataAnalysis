function [ SensorNum ] = FindMaxSensor( data )
%UNTITLED6 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
    MaxValue = data(:,size(data,2)-1);
    SensorNum = find(MaxValue == max(MaxValue));
end

