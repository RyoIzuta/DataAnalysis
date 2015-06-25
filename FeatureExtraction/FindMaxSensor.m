function [ SensorNum ] = FindMaxSensor( data )
%UNTITLED6 この関数の概要をここに記述
%   詳細説明をここに記述
    MaxValue = data(:,size(data,2)-1);
    SensorNum = find(MaxValue == max(MaxValue));
end

