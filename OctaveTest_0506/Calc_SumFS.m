function [ SumF, SumS ] = Calc_SumFS( data )
%UNTITLED5 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
    tmp1 = data(1:int16(size(data,1)/2),:);
    SumF = sum(tmp1);
    tmp2 = data(int16(size(data,1)/2)+1:end,:);
    SumS = sum(tmp2);

end

