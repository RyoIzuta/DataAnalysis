function [ output ] = Arrange_Data( Data )
%UNTITLED2 この関数の概要をここに記述
%   詳細説明をここに記述
%   時刻ｔにおける圧力データの総和を計算
%   時刻ｔにおける加速度データの合成値を計算
    TimeStamp = Data(:,1);
    PressData = Data(:,2:end-3);
    AccData = Data(:,end-2:end);
    
    PressSum = sum(PressData,2);
    
    PressSum_TD = zeros(size(PressSum,1),1);
     for  k=2:size(PressSum,1)
         PressSum_TD(k,1) = PressSum(k,1)-PressSum(k-1,1);
     end
    
    AccComp = zeros(size(AccData,1),1);
    AccComp(:,1) = sqrt(AccData(:,1).^2 + AccData(:,2).^2 + AccData(:,3).^2);
    
    tmp = horzcat(TimeStamp,PressSum);
    tmp = horzcat(tmp,PressSum_TD);
    output = horzcat(tmp,AccComp);

end

