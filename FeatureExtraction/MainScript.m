 clear;
 close all;
 
  %Read Users' Data
  CSV = csvread('TestData.csv');
  
  Label = CSV(1,1);
  Data = CSV(2:end,:);
  GestureData = Cut_Gesture(Data);
  
  for k=1:size(GestureData,2)
    Target = GestureData{1,k};
    Feature = FeatureExtraction(Target, Label);
    %Output CSV file.
    dlmwrite('featureSet.csv',Feature,'-append');
  end