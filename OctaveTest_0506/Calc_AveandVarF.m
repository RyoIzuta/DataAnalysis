function [Ave, Var] = Calc_AveandVarF(data)
%UNTITLED この関数の概要をここに記述
%Calculate Average and Variance using data of half length
%   詳細説明をここに記述
  tmp(1,:) = data(1,:);
  for i=2:int16(size(data,1)/2)
      tmp = vertcat(tmp,data(i,:));
  end
  
  Ave = mean(tmp);
  Var = var(tmp);

end

