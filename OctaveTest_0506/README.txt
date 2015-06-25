.mファイル作成者：出田怜

読み込んだcsvファイルから特徴量を計算して
csvとして出力する。


・csvの読み込みは
%Read All User1's Data
 data11 = csvread('0_Izuta_right_front.csv');
 data12 = csvread('0_Izuta_left_front.csv');
 data13 = csvread('0_Izuta_right_back.csv');
 data14 = csvread('0_Izuta_left_back.csv');
 data15 = csvread('0_Izuta_right_chest.csv');
 data16 = csvread('0_Izuta_left_chest.csv');

のように被験者のデータを入れて


%Kinds of Postures for Recognition
 Posture1 = 0;
 Posture2 = 1;
 Posture3 = 2;
 Posture4 = 3;
 Posture5 = 4;
 Posture6 = 5;
ラベルの登録をする。

%Cut data per gesture
 Data11 = Cut_Gesture(data11);%Data11(1,n)縺ｧn蝗樒岼縺ｮ繧ｸ繧ｧ繧ｹ繝√Ε
 Data12 = Cut_Gesture(data12);
 Data13 = Cut_Gesture(data13);
 Data14 = Cut_Gesture(data14);
 Data15 = Cut_Gesture(data15);
 Data16 = Cut_Gesture(data16);
 Name1 = 100;

ジェスチャごとに切り出して、そのデータの名前ラベルを登録する。

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


処理したいデータを終結させてスタート。

featureSet.csvに各特徴量が出力される。
特徴量,収納位置,被験者のラベル