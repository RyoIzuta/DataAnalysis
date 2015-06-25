clear;
close all;

%Read All User1's Data
 data11 = csvread('0_Izuta_right_front.csv');
 data12 = csvread('0_Izuta_left_front.csv');
 data13 = csvread('0_Izuta_right_back.csv');
 data14 = csvread('0_Izuta_left_back.csv');
 data15 = csvread('0_Izuta_right_chest.csv');
 data16 = csvread('0_Izuta_left_chest.csv');
 %data11 = csvread('testdata.csv');
 %data12 = csvread('testdata.csv');
 %data13 = csvread('testdata.csv');
 %data14 = csvread('testdata.csv');
 %data15 = csvread('testdata.csv');
 %data16 = csvread('testdata.csv');
%Read All User2's Data
 data21 = csvread('1_Kurahashi_right_front.csv');
 data22 = csvread('1_Kurahashi_left_front.csv');
 data23 = csvread('1_Kurahashi_right_back.csv');
 data24 = csvread('1_Kurahashi_left_back.csv');
 data25 = csvread('1_Kurahashi_right_chest.csv');
 data26 = csvread('1_Kurahashi_left_chest.csv'); 
 %Read All User3's Data
 data31 = csvread('2_Miki_right_front.csv');
 data32 = csvread('2_Miki_left_front.csv');
 data33 = csvread('2_Miki_right_back.csv');
 data34 = csvread('2_Miki_left_back.csv');
 data35 = csvread('2_Miki_right_chest.csv');
 data36 = csvread('2_Miki_left_chest.csv'); 
 %Read All User4's Data
 data41 = csvread('3_Yamada_right_front.csv');
 data42 = csvread('3_Yamada_left_front.csv');
 data43 = csvread('3_Yamada_right_back.csv');
 data44 = csvread('3_Yamada_left_back.csv');
 data45 = csvread('3_Yamada_right_chest.csv');
 data46 = csvread('3_Yamada_left_chest.csv'); 
 %Read All User2's Data
 data51 = csvread('4_Konishi_right_front.csv');
 data52 = csvread('4_Konishi_left_front.csv');
 data53 = csvread('4_Konishi_right_back.csv');
 data54 = csvread('4_Konishi_left_back.csv');
 data55 = csvread('4_Konishi_right_chest.csv');
 data56 = csvread('4_Konishi_left_chest.csv'); 
 
%Kinds of Postures for Recognition
 Posture1 = 0;
 Posture2 = 1;
 Posture3 = 2;
 Posture4 = 3;
 Posture5 = 4;
 Posture6 = 5;
 

%Cut data per gesture
 Data11 = Cut_Gesture(data11);%Data11(1,n)でn回目のジェスチャ
 Data12 = Cut_Gesture(data12);
 Data13 = Cut_Gesture(data13);
 Data14 = Cut_Gesture(data14);
 Data15 = Cut_Gesture(data15);
 Data16 = Cut_Gesture(data16);
 Name1 = 100;
 
 Data21 = Cut_Gesture(data21);%Data11(1,n)でn回目のジェスチャ
 Data22 = Cut_Gesture(data22);
 Data23 = Cut_Gesture(data23);
 Data24 = Cut_Gesture(data24);
 Data25 = Cut_Gesture(data25);
 Data26 = Cut_Gesture(data26);
 Name2 = 101;
 
 Data31 = Cut_Gesture(data21);%Data11(1,n)でn回目のジェスチャ
 Data32 = Cut_Gesture(data22);
 Data33 = Cut_Gesture(data23);
 Data34 = Cut_Gesture(data24);
 Data35 = Cut_Gesture(data25);
 Data36 = Cut_Gesture(data26);
 Name3 = 102;
 
 Data41 = Cut_Gesture(data21);%Data11(1,n)でn回目のジェスチャ
 Data42 = Cut_Gesture(data22);
 Data43 = Cut_Gesture(data23);
 Data44 = Cut_Gesture(data24);
 Data45 = Cut_Gesture(data25);
 Data46 = Cut_Gesture(data26);
 Name4 = 103;
 
 Data51 = Cut_Gesture(data21);%Data11(1,n)でn回目のジェスチャ
 Data52 = Cut_Gesture(data22);
 Data53 = Cut_Gesture(data23);
 Data54 = Cut_Gesture(data24);
 Data55 = Cut_Gesture(data25);
 Data56 = Cut_Gesture(data26);
 Name5 = 104;
 
%All Data & All Labels & All Postures
DataAll = [{Data11},{Data12},{Data13},{Data14},{Data15},{Data16};
           {Data21},{Data22},{Data23},{Data24},{Data25},{Data26};
           {Data31},{Data32},{Data33},{Data34},{Data35},{Data36};
           {Data41},{Data42},{Data43},{Data44},{Data45},{Data46};
           {Data51},{Data52},{Data53},{Data54},{Data55},{Data56}]; 
           
NameAll = [{Name1},{Name1},{Name1},{Name1},{Name1},{Name1};
           {Name2},{Name2},{Name2},{Name2},{Name2},{Name2};
           {Name3},{Name3},{Name3},{Name3},{Name3},{Name3};
           {Name4},{Name4},{Name4},{Name4},{Name4},{Name4};
           {Name5},{Name5},{Name5},{Name5},{Name5},{Name5}];
           
PostureAll = [{Posture1},{Posture2},{Posture3},{Posture4},{Posture5},{Posture6};
              {Posture1},{Posture2},{Posture3},{Posture4},{Posture5},{Posture6};
              {Posture1},{Posture2},{Posture3},{Posture4},{Posture5},{Posture6};
              {Posture1},{Posture2},{Posture3},{Posture4},{Posture5},{Posture6};
              {Posture1},{Posture2},{Posture3},{Posture4},{Posture5},{Posture6}];

for j=1:size(DataAll,1)
  for i=1:size(DataAll,2)
    tmp1 = DataAll{j,i};
    tmp2 = NameAll{j,i};
    tmp3 = PostureAll{j,i};
    for k=1:size(tmp1, 2)
      TargetData = tmp1{1,k};
      Name = tmp2;
      Posture = tmp3;
      Time = TargetData(:,1);
      PressData = TargetData(2:end, 2:end-3);
      AccData = TargetData(2:end,end-2:end);
      %Connect complex value=============
      Comp = zeros(size(AccData,1),1);
      Comp(:,1) = sqrt(AccData(:,1).^2 + AccData(:,2).^2 + AccData(:,3).^2);
      AccData = horzcat(AccData, Comp);
      %==================================
      %Calculate feature value===========
      %==================================
      %Using AccData
      %1.Average and Variance
      [AccAverage, AccVariance] = Calc_AveandVar(AccData);
      %2. Average and Variance (Part of First half)
      [AccAverage_Fhalf, AccVariance_Fhalf] = Calc_AveandVarF(AccData);
      %3. Average and Variance (Part of Second half)
      [AccAverage_Shalf, AccVariance_Shalf] = Calc_AveandVarS(AccData);
      %4. Max and Min (Full length)
      [AccMax, AccMin] = Calc_MaxandMin(AccData);
      %5. Max and Min (First half length)
      [AccMax_Fhalf, AccMin_Fhalf] = Calc_MaxandMinF(AccData);
      %6. Max and Min (Second half length)
      [AccMax_Shalf, AccMin_Shalf] = Calc_MaxandMinS(AccData);
      %7.8.9. Crossing Count(Full Length, First/Second Half Length)
      [AccCross, AccCross_Fhalf, AccCross_Shalf] = Calc_CrossingCount(AccData);
      %10.11.12. Peak2Peak(Full Length, First/Second Half Length)
      [AccP2P, AccP2P_Fhalf, AccP2P_Shalf] = Calc_Peak2Peak(AccData);
      %13. Differnce AccAverageF and AccAverageS
      AccAveDifference = AccAverage_Fhalf-AccAverage_Shalf;
      %14. Difference AccVarF and AccVarS
      AccVarDifference = AccVariance_Fhalf-AccVariance_Shalf;
      %15. Difference AccMaxF and AccMaxS
      AccMaxDifference = AccMax_Fhalf-AccMax_Shalf;
      %16. Difference AccMinF and AccMinS
      AccMinDifference = AccMin_Fhalf-AccMin_Shalf;
      %17. Difference AccCrossF and AccCrossS
      AccCrossDifference = AccCross_Fhalf-AccCross_Shalf;
      %18. Difference AccP2PF and AccP2PS
      AccP2PDifference = AccP2P_Fhalf-AccP2P_Shalf;
      
      %19. Find Frequency with maxPower(AccData, Sampling Rate)
      AccFFTfreq = FindFFTfreq(AccData, 50);
      %20. ThirdQuantile
      AccThirdQuantile = Calc_ThirdQuantile(AccData);
      %21. Root Mean Square
      AccRMS = Calc_RMS(AccData);
      
      %Using PressureData
      %Create Time Difference Value======================
      PressData_TD = [];
      PresData_TD = zeros(size(PressData,1)-1,size(PressData,2));
      for m=2:size(PressData,1)
          PressData_TD(m-1,:) = PressData(m,:)-PressData(m-1,:);
      end
      %==================================================
      %Connect Max, Min, Ave value at time t=============
      Comp = zeros(size(PressData_TD,1),2);
      Comp(:,1) = sum(PressData_TD,2);
      Comp(:,2) = mean(PressData_TD,2);
      PressData_TD = horzcat(PressData_TD, Comp);
      %==================================================
      %1. Average and Variance (Full Length)
      [PressAverage, PressVariance] = Calc_AveandVar(PressData_TD);
      %2. Average and Variance (Part of First half)
      [PressAverage_Fhalf, PressVariance_Fhalf] = Calc_AveandVarF(PressData_TD);
      %3. Average and Variance (Part of Second half)
      [PressAverage_Shalf, PressVariance_Shalf] = Calc_AveandVarS(PressData_TD);
      %4. Max and Min (Full length)
      [PressMax, PressMin] = Calc_MaxandMin(PressData_TD);
      %5. Max and Min (First half length)
      [PressMax_Fhalf, PressMin_Fhalf] = Calc_MaxandMinF(PressData_TD);
      %6. Max and Min (Second half length)
      [PressMax_Shalf, PressMin_Shalf] = Calc_MaxandMinS(PressData_TD);
      %7.8.9. Crossing Count(Full Length, First/Second Half Length)
      [PressCross, PressCross_Fhalf, PressCross_Shalf] = Calc_CrossingCount(PressData_TD);
      %10.11.12. Peak2Peak(Full Length, First/Second Half Length)
      [PressP2P, PressP2P_Fhalf, PressP2P_Shalf] = Calc_Peak2Peak(PressData_TD);
      %13. Differnce PressAverageF and PressAverageS
      PressAveDifference = PressAverage_Fhalf-PressAverage_Shalf;
      %14. Difference PressVarF and PressVarS
      PressVarDifference = PressVariance_Fhalf-PressVariance_Shalf;
      %15. Difference PressMaxF and PressMaxS
      PressMaxDifference = PressMax_Fhalf-PressMax_Shalf;
      %16. Difference PressMinF and PressMinS
      PressMinDifference = PressMin_Fhalf-PressMin_Shalf;
      %17. Difference PressCrossF and PressCrossS
      PressCrossDifference = PressCross_Fhalf-PressCross_Shalf;
      %18. Difference PressP2PF and PressP2PS
      PressP2PDifference = PressP2P_Fhalf-PressP2P_Shalf; 
      %19. Find Frequency with maxPower(AccData, Sampling Rate)
      PressFFTfreq = FindFFTfreq(PressData_TD, 50);
      %20. ThirdQuantile
      PressThirdQuantile = Calc_ThirdQuantile(PressData_TD);
      %21. Root Mean Square
      PressRMS = Calc_RMS(PressData_TD);
      %22. Sum of Pressure (Full Length)
      PressSum = Calc_Sum(PressData_TD);
      %23. 24. Sum of Pressure (First and Second half Length)
      [PressSum_Fhalf, PressSum_Shalf] = Calc_SumFS(PressData_TD);
      %25. Difference PressSum_Fhalf and PressSum_Shalf
      PressSumDifference = PressSum_Fhalf-PressSum_Shalf;
      %26. Sensor number which showed max vale
      PressMaxSensorNumber = FindMaxSensor(PressData_TD);
      %27. Time Sum of Sensor Value shows Max Value
      PressTime = FindMaxTime(PressData_TD);
      %28. max rank of Histgram
      PressMaxRank = FindMaxRank(PressData_TD);
      %29. Correlation Coefficient
      Correlation = Calc_CorrelationCoefficient(AccData, PressData_TD);
      
      %============================================================
  
      %create feature value matrix
      FeatureValue = [AccAverage AccVariance AccAverage_Fhalf AccVariance_Fhalf...
                      AccAverage_Shalf AccVariance_Fhalf AccMax AccMin...
                      AccMax_Fhalf AccMin_Fhalf AccMax_Shalf AccMin_Shalf...
                      AccCross AccCross_Fhalf AccCross_Shalf AccP2P...
                      AccP2P_Fhalf AccP2P_Shalf AccAveDifference AccVarDifference...
                      AccMaxDifference AccMinDifference AccCrossDifference AccP2PDifference...
                      AccFFTfreq AccThirdQuantile AccRMS...
                      PressAverage PressVariance PressAverage_Fhalf PressVariance_Fhalf...
                      PressAverage_Shalf PressVariance_Shalf PressMax PressMin...
                      PressMax_Fhalf PressMin_Fhalf PressMax_Shalf PressMin_Shalf...
                      PressCross PressCross_Fhalf PressCross_Shalf PressP2P...
                      PressP2P_Fhalf PressP2P_Shalf PressAveDifference PressVarDifference...
                      PressMaxDifference PressMinDifference PressCrossDifference PressP2PDifference...
                      PressFFTfreq PressThirdQuantile PressRMS...
                      PressSum PressSum_Fhalf PressSum_Shalf PressSumDifference...
                      PressMaxSensorNumber PressTime PressMaxRank Correlation Posture Name];
      dlmwrite('featureSet.csv',FeatureValue,'-append');
    end
    
  end
end              

%figure
figure;
title('Test');
plot(f,AccFFT(1:257));
%spectrogram(AccData);
%subplot(3,1,1)
%plot(t(),x);
%subplot(3,1,2)
%plot(t,y);
%subplot(2,1,2);
%plot(time2,x2);
%xlabel('Xaxis');
%ylabel('Yaxis');
%subplot(2,1,1);
%plot(time1,x);
%xlabel('Xaxis');
%ylabel('Yaxis');
