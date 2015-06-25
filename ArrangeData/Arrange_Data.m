function [ output ] = Arrange_Data( Data )
%UNTITLED2 ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
%   �������ɂ����鈳�̓f�[�^�̑��a���v�Z
%   �������ɂ���������x�f�[�^�̍����l���v�Z
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

