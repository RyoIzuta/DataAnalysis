function [ MaxRank ] = FindMaxRank( data )
%UNTITLED8 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
    Target = data(:,size(data,2)-1);
    [counts, centres] = hist(Target);
    index = find(counts == max(counts));
    MaxRank = centres(index);

end

