function [ ThirdQuantile ] = Calc_ThirdQuantile( data )
%UNTITLED2 この関数の概要をここに記述
%   詳細説明をここに記述
    X = data;
    Quantile = quantile(X,[0.2, 0.4, 0.6, 0.8]);
    ThirdQuantile = Quantile(3,:);
end

