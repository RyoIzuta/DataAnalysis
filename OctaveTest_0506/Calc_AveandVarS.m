function [Ave, Var] = Calc_AveandVarS(data)
%UNTITLED ���̊֐��̊T�v�������ɋL�q
%Calculate Average and Variance using data of half length
%   �ڍא����������ɋL�q
  tmp(1,:) = data(int16(size(data,1)/2),:);
  for i=int16(size(data,1)/2)+1:size(data,1);
      tmp = vertcat(tmp,data(i,:));
  end
  
  Ave = mean(tmp);
  Var = var(tmp);

end
