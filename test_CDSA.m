clear all
addpath('./libsvm-new');
addpath('./liblinear-2.1/matlab');
warning off;
%berlin--337  bauma--264  RML--720 eNT--1072

clear all;
addpath('./libsvm-new');
addpath('./liblinear-2.1/matlab');

%berlin-enter
load('berlin_1582.mat');
    S = double(feature);
load('enterface_1582.mat');
    T = double(feature(1:820,:));
    Ttest= double(feature(821:end,:));
load('berlin_label.mat'); 
    S_Label=double(label);
load('enterface_label.mat');
    T_Label=double(label(1:820,:));
    Ttest_Label = double(label(821:end,:));


% enter -berlin  
% load('enterface_1582.mat');
%     S = double(feature);
% load('berlin_1582.mat');
%     T = double(feature(1:224,:));
%     Ttest= double(feature(225:end,:));
% load('enterface_label.mat'); 
%     S_Label=double(label);
% load('berlin_label.mat');
%     T_Label=double(label(1:224,:));
%     Ttest_Label = double(label(225:end,:));

    
% RML -enter  
% load('RML.mat');
%     S = double(feature);
% load('enterface_1582.mat');
%     T = double(feature(1:820,:));
%     Ttest= double(feature(821:end,:));
% load('RML_label.mat'); 
%     S_Label=double(label);
% load('enterface_label.mat');
%     T_Label=double(label(1:820,:));
%     Ttest_Label = double(label(821:end,:));

% enter-RML  
% load('enterface_1582.mat');
%     S = double(feature);
% load('RML.mat');
%     T = double(feature(1:420,:));
%     Ttest= double(feature(421:end,:));
% load('enterface_label.mat'); 
%     S_Label=double(label);
% load('RML_label.mat');
%     T_Label=double(label(1:420,:));
%     Ttest_Label = double(label(421:end,:));
    
% RML -berlin  
% load('RML.mat');
%     S = double(feature);
% load('berlin_1582.mat');
%     T = double(feature(1:224,:));
%     Ttest= double(feature(225:end,:));
% load('RML_label.mat'); 
%     S_Label=double(label);
% load('berlin_label.mat');
%     T_Label=double(label(1:224,:));
%     Ttest_Label = double(label(225:end,:));

% berlin -RML 
% load('berlin_1582.mat');
%     S = double(feature);
% load('RML.mat');
%     T = double(feature(1:420,:));
%     Ttest= double(feature(421:end,:));
% load('berlin_label.mat'); 
%     S_Label=double(label);
% load('RML_label.mat');
%     T_Label=double(label(1:420,:));
%     Ttest_Label = double(label(421:end,:));


%bauma-berlin 
% load('bauma_1582.mat');
%     S = double(feature);
% load('berlin_1582.mat');
%     T = double(feature(1:224,:));
%     Ttest= double(feature(225:end,:));
% load('bauma_label.mat'); 
%     S_Label=double(label);
% load('berlin_label.mat');
%     T_Label=double(label(1:224,:));
%     Ttest_Label = double(label(225:end,:));

%bauma-enter 
% load('bauma_1582.mat');
%     S = double(feature);
% load('enterface_1582.mat');
%     T = double(feature(1:704,:));
%     Ttest= double(feature(705:end,:));
% load('bauma_label.mat'); 
%     S_Label=double(label);
% load('enterface_label.mat');
%     T_Label=double(label(1:704,:));
%     Ttest_Label = double(label(705:end,:));

%bauma-RML
% load('bauma_1582.mat');
%     S = double(feature);
% load('RML.mat');
%     T = double(feature(1:420,:));
%     Ttest= double(feature(421:end,:));
% load('bauma_label.mat'); 
%     S_Label=double(label);
% load('RML_label.mat');
%     T_Label=double(label(1:420,:));
%     Ttest_Label = double(label(421:end,:));

%berlin-bauma  
% load('berlin_1582.mat');
%     S = double(feature);
% load('bauma_1582.mat');
%     T = double(feature(1:121,:));
%     Ttest= double(feature(122:end,:));
% load('berlin_label.mat'); 
%     S_Label=double(label);
% load('bauma_label.mat');
%     T_Label=double(label(1:121,:));
%     Ttest_Label = double(label(122:end,:));


% %enter-bauma  
% load('enterface_1582.mat');
%     S = double(feature);
% load('bauma_1582.mat');
%     T = double(feature(1:121,:));
%     Ttest= double(feature(122:end,:));
% load('enterface_label.mat'); 
%     S_Label=double(label);
% load('bauma_label.mat');
%     T_Label=double(label(1:121,:));
%     Ttest_Label = double(label(122:end,:));

%RML-buama
% load('RML.mat');
%     S = double(feature);
% load('bauma_1582.mat');
%     T = double(feature(1:121,:));
%     Ttest= double(feature(122:end,:));
% load('RML_label.mat'); 
%     S_Label=double(label);
% load('bauma_label.mat');
%     T_Label=double(label(1:121,:));
%     Ttest_Label = double(label(122:end,:));


%deep  enter-berlin
% load('enterface_deep.mat');
%     S = double(feature(:,1:2048));
% load('berlin_deep.mat');
%     T = double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],1:2048));
%     Ttest= double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],1:2048));
% load('enterface_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('berlin_deep.mat');
%     T_Label=double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],2049));
%     Ttest_Label = Ttest_Label+1;   

%deep  enter-bauma
% load('enterface_deep.mat');
%     S = double(feature(:,1:2048));
% load('baum_deep.mat');
%     T = double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],1:2048));
%     Ttest= double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],1:2048));
% load('enterface_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('baum_deep.mat');
%     T_Label=double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],2049));
%     Ttest_Label = Ttest_Label+1;   

%deep  enter-RML
% load('enterface_deep.mat');
%     S = double(feature(:,1:2048));
% load('RML_deep.mat');
%     T = double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],1:2048));
%     Ttest= double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],1:2048));
% load('enterface_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('RML_deep.mat');
%     T_Label=double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],2049));    
%     Ttest_Label = Ttest_Label+1;   

% %deep  RML-berlin
% load('RML_deep.mat');
%     S = double(feature(:,1:2048));
% load('berlin_deep.mat');
%     T = double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],1:2048));
%     Ttest= double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],1:2048));
% load('RML_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('berlin_deep.mat');
%     T_Label=double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],2049));
%     Ttest_Label = Ttest_Label+1;   


%deep  RML-enter
% load('RML_deep.mat');
%     S = double(feature(:,1:2048));
% load('enterface_deep.mat');
%     T = double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],1:2048));
%     Ttest= double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],1:2048));
% load('RML_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('enterface_deep.mat');
%     T_Label=double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],2049));
%     Ttest_Label = Ttest_Label+1; 
        
%deep  RML-baum
% load('RML_deep.mat');
%     S = double(feature(:,1:2048));
% load('baum_deep.mat');
%     T = double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],1:2048));
%     Ttest= double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],1:2048));
% load('RML_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('baum_deep.mat');
%     T_Label=double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],2049));
%     Ttest_Label = Ttest_Label+1;   
    
%deep  berlin-enter
% load('berlin_deep.mat');
%     S = double(feature(:,1:2048));
% load('enterface_deep.mat');
%     T = double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],1:2048));
%     Ttest= double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],1:2048));
% load('berlin_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('enterface_deep.mat');
%     T_Label=double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],2049));
%     Ttest_Label = Ttest_Label+1;    
    
    
%deep  berlin-RML
% load('berlin_deep.mat');
%     S = double(feature(:,1:2048));
% load('RML_deep.mat');
%     T = double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],1:2048));
%     Ttest= double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],1:2048));
% load('berlin_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('RML_deep.mat');
%     T_Label=double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],2049));
%     Ttest_Label = Ttest_Label+1;  
 
% %deep  berlin-bauma
% load('berlin_deep.mat');
%     S = double(feature(:,1:2048));
% load('baum_deep.mat');
%     T = double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],1:2048));
%     Ttest= double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],1:2048));
% load('berlin_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('baum_deep.mat');
%     T_Label=double(feature([1:1:29,43:1:66,77:1:100,112:1:129,138:1:162],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([30:1:42,67:1:76,101:1:111,130:1:137,163:1:173],2049));
%     Ttest_Label = Ttest_Label+1;

%deep  bauma-berlin
% load('baum_deep.mat');
%     S = double(feature(:,1:2048));
% load('berlin_deep.mat');
%     T = double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],1:2048));
%     Ttest= double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],1:2048));
% load('baum_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('berlin_deep.mat');
%     T_Label=double(feature([1:1:89,129:1:154,166:1:203,220:1:264,285:1:321],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([90:1:128,155:1:165,204:1:219,265:1:284,322:1:337],2049));
%     Ttest_Label = Ttest_Label+1;
    
%deep  bauma-enter
% load('baum_deep.mat');
%     S = double(feature(:,1:2048));
% load('enterface_deep.mat');
%     T = double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],1:2048));
%     Ttest= double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],1:2048));
% load('baum_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('enterface_deep.mat');
%     T_Label=double(feature([1:1:150,216:1:365,431:1:580,646:1:793,858:1:1007],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([151:1:215,366:1:430,581:1:645,794:1:857,1008:1:1072],2049));
%     Ttest_Label = Ttest_Label+1; 
    
%deep  bauma-RML
% load('baum_deep.mat');
%     S = double(feature(:,1:2048));
% load('RML_deep.mat');
%     T = double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],1:2048));
%     Ttest= double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],1:2048));
% load('baum_deep.mat'); 
%     S_Label=double(feature(:,2049));
%     S_Label = S_Label +1;
% load('RML_deep.mat');
%     T_Label=double(feature([1:1:84,121:1:204,241:1:324,361:1:444,481:1:564],2049));
%     T_Label = T_Label+1;
%     Ttest_Label = double(feature([85:1:120,205:1:240,325:1:360,445:1:480,565:1:600],2049));
%     Ttest_Label = Ttest_Label+1;


% load('ENTER_DEEP_RAND.mat');
% % M = double(feature);
% % rowrank = randperm(size(M, 1));
% % N= M(rowrank,:);
% S = double(N(1:536,1:2048));
% S_Label=double(N(1:536,2049));
% S_Label = S_Label +1;
% T = double(N(537:910,1:2048));
% Ttest= double(N(910:1072,1:2048));
% T_Label=double(N(537:910,2049));
% T_Label = T_Label+1;
% Ttest_Label = double(N(910:1072,2049));
% Ttest_Label = Ttest_Label+1;



% load('enterface_1582.mat');
% S = double(feature(1:536,:));
% T = double(feature(537:910,:));
% Ttest= double(feature(910:1072,:));
% load('enterface_label.mat');
% S_Label=double(label(1:536,:));
% T_Label=double(label(537:910,:));
% Ttest_Label = double(label(910:1072,:));



S = normalization(S',1);
S =S';
Ttest=normalization(Ttest',1);
Ttest = Ttest';
Ttest = Ttest(:,1:end);
T = normalization(T',1);
T = T';
Xt = T(:,1:end);    
Xs = S(:,1:end);
Ys = S_Label;
Yt = T_Label;
test_data = Ttest;
test_label = Ttest_Label;
lambda=20;

options.ReducedDim = 100;
Options = [];
Options.ReducedDim =100;
XS = [Xs;Xt;Ttest];
[eigvector,eigvalue] = PCA1(XS,Options);
XS = XS * eigvector;
Xs = XS(1:size(Xs,1),:);
Xt = XS(size(Xs,1)+1:size(Xs,1)+size(Xt,1),:);
Ttest = XS(size(Xs,1)+size(Xt,1)+1:end,:);


m=0;
max_acc=0;
canshu=0;
for alfa1= [0.001:0.001:0.01,0.01:0.01:1,1:1:1000]
    options = [];
    options.alfa =alfa1; 
    options.beta =1;
    options.gamma =1;
    options.T = 10;
    m = m+1;
    [acc,acc_iter,P1,P2,obj_value ] = JALDA(Xs',Ys,Xt',Yt,options );
    Zs= P1'*Xs';
    Zs = normalization(Zs,1);
    Zt = P1'*Ttest';
    Zt = normalization(Zt,1);
    model= svmtrain(Ys,Zs','-s 0 -t 0 -c 1 -g 1 ');
    [ Y_tar_pseudo, acc,~] = svmpredict(test_label,Zt',model);
    disp(m);
    myacc(1,m)=alfa1;
    myacc(2,m)=acc(1);
    disp(acc(1));
    if (acc(1)> max_acc)
        max_acc=acc(1);
        canshu =alfa1;   
    end
end
myacc(1,m+1)=max_acc;
myacc(2,m+1)=canshu;

