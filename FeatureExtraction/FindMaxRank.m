function [ MaxRank ] = FindMaxRank( data )
%UNTITLED8 この関数の概要をここに記述
%   詳細説明をここに記述
    Target = data(:,size(data,2)-1);
    [counts, centres] = hist(Target);
    index = find(counts == max(counts));
    MaxRank = centres(index);

end

