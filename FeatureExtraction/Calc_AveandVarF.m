function [Ave, Var] = Calc_AveandVarF(data)
%UNTITLED ���̊֐��̊T�v�������ɋL�q
%Calculate Average and Variance using data of half length
%   �ڍא����������ɋL�q
  tmp(1,:) = data(1,:);
  for i=2:int16(size(data,1)/2)
      tmp = vertcat(tmp,data(i,:));
  end
  
  Ave = mean(tmp);
  Var = var(tmp);

end

