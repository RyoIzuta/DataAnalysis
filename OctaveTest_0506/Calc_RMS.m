function [ RMS ] = Calc_RMS( data )
%UNTITLED3 この関数の概要をここに記述
%   詳細説明をここに記述
    data = data.^2;
    RMS = mean(data);

end

