function [ Time ] = FindMaxTime( data )
%UNTITLED7 この関数の概要をここに記述
%   詳細説明をここに記述
    SumValue = data(:,size(data,2)-1);
    Index = find(SumValue == max(SumValue));
    Time = Index/size(data,1);

end

