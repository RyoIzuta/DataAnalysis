function [ RMS ] = Calc_RMS( data )
%UNTITLED3 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
    data = data.^2;
    RMS = mean(data);

end

