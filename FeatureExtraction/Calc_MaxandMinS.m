function [Max, Min] = Calc_MaxandMinS( data )
%UNTITLED3 ���̊֐��̊T�v�������ɋL�q
%Calclate Max and Min in the data
%   �ڍא����������ɋL�q
    tmp(1,:) = data(int16(size(data,1)/2),:);
    for i=int16(size(data,1)/2)+1:size(data,1)
        tmp = vertcat(tmp,data(i,:));
    end
    Max = max(data);
    Min = min(data);
end

