function [ ThirdQuantile ] = Calc_ThirdQuantile( data )
%UNTITLED2 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
    X = data;
    Quantile = quantile(X,[0.2, 0.4, 0.6, 0.8]);
    ThirdQuantile = Quantile(3,:);
end

