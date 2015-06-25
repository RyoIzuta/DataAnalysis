function [ Correlation ] = Calc_CorrelationCoefficient( data1, data2 )
%UNTITLED9 この関数の概要をここに記述
%   詳細説明をここに記述
    L =[size(data1,1) size(data2,1)];
    Length = min(L);
    
    Target1 = data1(1:Length,size(data1,2));%AccComp
    Target2 = data2(1:Length,size(data2,2)-1);%PressSum
   
    C_Target1 = sqrt(sum((Target1-mean(Target1)).^2));
    C_Target2 = sqrt(sum((Target2-mean(Target2)).^2));
    
    Correlation = sum((Target1-mean(Target1)).*(Target2-mean(Target2)))/C_Target1/C_Target2;

end

