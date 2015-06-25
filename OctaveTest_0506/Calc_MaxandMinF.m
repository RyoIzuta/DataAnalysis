function [Max, Min] = Calc_MaxandMinF(data)
%UNTITLED3 この関数の概要をここに記述
%Calclate Max and Min in the data
%   詳細説明をここに記述
    tmp(1,:) = data(1,:);
    for i=2:int16(size(data,1)/2)
        tmp = vertcat(tmp,data(i,:));
    end
    Max = max(data);
    Min = min(data);
end

