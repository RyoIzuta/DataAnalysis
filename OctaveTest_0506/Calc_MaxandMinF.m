function [Max, Min] = Calc_MaxandMinF(data)
%UNTITLED3 ���̊֐��̊T�v�������ɋL�q
%Calclate Max and Min in the data
%   �ڍא����������ɋL�q
    tmp(1,:) = data(1,:);
    for i=2:int16(size(data,1)/2)
        tmp = vertcat(tmp,data(i,:));
    end
    Max = max(data);
    Min = min(data);
end

