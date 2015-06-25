function [ OutPut ] = FindFFTfreq( data, fs )
%UNTITLED この関数の概要をここに記述
%   詳細説明をここに記述
    TargetFreq = zeros(1,size(data,2));
    for k=1:size(data,2)
        Data = data(:,k);
        m = length(Data);          % Window length
        n = pow2(nextpow2(m));  % Transform length
        y = fft(Data,n);           % DFT
        Freq = (0:n-1)*(fs/n);     % Frequency range
        Power = y.*conj(y)/n;   % Power of the DFT
        Freq = Freq(1:floor(n/2));
        Power = Power(1:floor(n/2));
        %plot(Freq,Power);
        %find the index of max power
        index = find(Power == max(Power));
        TargetFreq(1,k) = Freq(1,index);
    end
    
    OutPut = TargetFreq;

end

