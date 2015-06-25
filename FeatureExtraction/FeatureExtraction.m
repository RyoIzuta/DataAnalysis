function [ Feature ] = FeatureExtraction( GestureData, Label )
%UNTITLED2 この関数の概要をここに記述
%   Feature Extraction from csv file.
%   csv format is ...
%    label 0 0 0 0 0 0 0 0
%    repos 0 0 0 0 0 0 0 0 
%    value v v v v v v v v
%    ....
%     0    0 0 0 0 0 0 0 0
%    resos 0 0 0 0 0 0 0 0
%    value v v v v v v v v 
%    ....
%   詳細説明をここに記述

    Target = GestureData;
    Repository = Target(2,1);
    Time = Target(:,1);
    SensorValue = Target(3:end,2:end);
    % Pretreatment===============================
    %============================================
    
    %Calculate feature value===========
    %==================================
      %Using AccData
      %1.Average and Variance
      [Average, Variance] = Calc_AveandVar(SensorValue);
      %2. Average and Variance (Part of First half)
      [Average_Fhalf, Variance_Fhalf] = Calc_AveandVarF(SensorValue);
      %3. Average and Variance (Part of Second half)
      [Average_Shalf, Variance_Shalf] = Calc_AveandVarS(SensorValue);
      %4. Max and Min (Full length)
      [Max, Min] = Calc_MaxandMin(SensorValue);
      %5. Max and Min (First half length)
      [Max_Fhalf, Min_Fhalf] = Calc_MaxandMinF(SensorValue);
      %6. Max and Min (Second half length)
      [Max_Shalf, Min_Shalf] = Calc_MaxandMinS(SensorValue);
      %7.8.9. Crossing Count(Full Length, First/Second Half Length)
      [Cross, Cross_Fhalf, Cross_Shalf] = Calc_CrossingCount(SensorValue);
      %10.11.12. Peak2Peak(Full Length, First/Second Half Length)
      [P2P, P2P_Fhalf, P2P_Shalf] = Calc_Peak2Peak(SensorValue);
      %13. Differnce AccAverageF and AccAverageS
      AveDifference = Average_Fhalf-Average_Shalf;
      %14. Difference AccVarF and AccVarS
      VarDifference = Variance_Fhalf-Variance_Shalf;
      %15. Difference AccMaxF and AccMaxS
      MaxDifference = Max_Fhalf-Max_Shalf;
      %16. Difference AccMinF and AccMinS
      MinDifference = Min_Fhalf-Min_Shalf;
      %17. Difference AccCrossF and AccCrossS
      CrossDifference = Cross_Fhalf-Cross_Shalf;
      %18. Difference AccP2PF and AccP2PS
      P2PDifference = P2P_Fhalf-P2P_Shalf;
      
      %19. Find Frequency with maxPower(AccData, Sampling Rate)
      FFTfreq = FindFFTfreq(SensorValue, 50);
      %20. ThirdQuantile
      ThirdQuantile = Calc_ThirdQuantile(SensorValue);
      %21. Root Mean Square
      RMS = Calc_RMS(SensorValue);
  
      %22. Sum of Value (Full Length)
      Sum = Calc_Sum(SensorValue);
      %23. 24. Sum of Valueure (First and Second half Length)
      [Sum_Fhalf, Sum_Shalf] = Calc_SumFS(SensorValue);
      %25. Difference ValueSum_Fhalf and ValueSum_Shalf
      SumDifference = Sum_Fhalf-Sum_Shalf;
      %26. Sensor number which showed max vale
      MaxSensorNumber = FindMaxSensor(SensorValue);
      %27. Time Sum of Sensor Value shows Max Value
      Time = FindMaxTime(SensorValue);
      %28. max rank of Histgram
      MaxRank = FindMaxRank(SensorValue);
      %29. Correlation Coefficient
      Correlation = Calc_CorrelationCoefficient(SensorValue, SensorValue);
      %============================================================
      
      %create feature value matrix
      Feature = [Average Variance Average_Fhalf Variance_Fhalf...
                      Average_Shalf Variance_Fhalf Max Min...
                      Max_Fhalf Min_Fhalf Max_Shalf Min_Shalf...
                      Cross Cross_Fhalf Cross_Shalf P2P...
                      P2P_Fhalf P2P_Shalf AveDifference VarDifference...
                      MaxDifference MinDifference CrossDifference P2PDifference...
                      FFTfreq ThirdQuantile RMS...
                      Sum Sum_Fhalf Sum_Shalf SumDifference...
                      MaxSensorNumber Time MaxRank Correlation Repository Label];
    
    
end

