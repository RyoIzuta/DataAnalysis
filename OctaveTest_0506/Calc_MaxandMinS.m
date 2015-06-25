function [Max, Min] = Calc_MaxandMinS( data )
%UNTITLED3 この関数の概要をここに記述
%Calclate Max and Min in the data
%   詳細説明をここに記述
    tmp(1,:) = data(int16(size(data,1)/2),:);
    for i=int16(size(data,1)/2)+1:size(data,1)
        tmp = vertcat(tmp,data(i,:));
    end
    Max = max(data);
    Min = min(data);
end

