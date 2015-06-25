 clear;
 close all;
 
 listing = dir('../Data/DataSet_evaluation/*.csv');
 Path = '../Data/DataSet_evaluation/';
 FilePath = strcat(Path, listing(1,1).name);
 %Read Users' Data
 CSV = csvread(FilePath);
  
  Label = CSV(1,1);
  Data = CSV(2:end,:);
  GestureData = Cut_Gesture(Data);
  
  
  for n=1:size(GestureData,2)
    Target = GestureData{1,n};
    
    Variance3 = GestureExtraction(Target, 0.04, 0.01);
    
    
  end
  figure;
  %ylim([min(PlotData(10:end,3)), max(PlotData(10:end,3))]);
  plot(Variance3);
  %plot(PlotData(10:end,1),PlotData(10:end,3),PlotData(10:end,1),PlotData(10:end,4));
   %plot(PlotData(:,1),PlotData(:,2),PlotData(:,1),PlotData(:,3));