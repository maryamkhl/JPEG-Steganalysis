clc,
clear all,
close all;
addpath(fullfile('..','jpeg_toolbox'));

addpath('D:\edu\payannameh\dataset\BOSSbase_1.01\BOSSbase_1.01_jpg75_resize256_nsF5\BOSSbase_1.01_jpg_resize256_0.5')
img = 'D:\edu\payannameh\dataset\BOSSbase_1.01\BOSSbase_1.01_jpg75_resize256_nsF5\BOSSbase_1.01_jpg_resize256_0.5';
savehere = 'D:\edu\payannameh\jpegonehot\bossbase_256_75_onehot_nsF5-0.5_19componentmiyani_T10'

fileNames = dir(fullfile(img,'*.jpg'));
N=length(fileNames);

for k = 1:N
   filename = fileNames(k).name;
    imgfile=fullfile(img,filename);

c=jpeg_read(imgfile);
CC=c.coef_arrays{1,1};
T=10; %defaultT=10

for pr=1:8%plain
for pc=1:8%plain 
    r=0;
for i=pr:8:size(CC,1); 
    r=r+1;%row
    c=0;
  for j=pc:8:size(CC,2)
     c=c+1;%col
        tc(r,c,(pr-1)*8+pc)=CC(i,j);
       % ts(r,c,(pr-1)*8+pc)=SS(i,j);
  end
end
end
end
% save('example.mat','tc','-v7.3')
cc1=abs(tc(:,:,2));%this should be tested for 1,2,3,9,10,11,17,18,19
cc2=abs(tc(:,:,3));
cc3=abs(tc(:,:,4));
cc4=abs(tc(:,:,5));
cc5=abs(tc(:,:,6));
% cc6=abs(tc(:,:,7));
% cc7=abs(tc(:,:,8));
% cc8=abs(tc(:,:,9));
cc9=abs(tc(:,:,10));
cc10=abs(tc(:,:,11));
cc11=abs(tc(:,:,12));
cc12=abs(tc(:,:,13));
% cc13=abs(tc(:,:,14));
% cc14=abs(tc(:,:,15));
cc15=abs(tc(:,:,17));
cc16=abs(tc(:,:,18));
cc17=abs(tc(:,:,19));
cc18=abs(tc(:,:,20));
% cc19=abs(tc(:,:,21));
% cc20=abs(tc(:,:,22));
cc21=abs(tc(:,:,25));
cc22=abs(tc(:,:,26));
cc23=abs(tc(:,:,27));
% cc24=abs(tc(:,:,28));
% cc25=abs(tc(:,:,29));
cc26=abs(tc(:,:,33));
cc27=abs(tc(:,:,34));
% cc28=abs(tc(:,:,35));
% cc29=abs(tc(:,:,36));
cc30=abs(tc(:,:,41));
% cc31=abs(tc(:,:,42));
% cc32=abs(tc(:,:,43));
% cc33=abs(tc(:,:,49));
% cc34=abs(tc(:,:,50));
% cc35=abs(tc(:,:,57));

C1 = zeros(32,32,10);
OH1=zeros(1,T);
for i=1:32
    for j=1:32
        OH1=zeros(1,T);
if(cc1(i,j)<T)
    OH1(cc1(i,j)+1)=1;
    
else
    OH1(T)=1;
end
matOH1(i,j,:)=OH1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%
C2 = zeros(32,32,10);
OH2=zeros(1,T);
for i=1:32
    for j=1:32
        OH2=zeros(1,T);
if(cc2(i,j)<T)
    OH2(cc2(i,j)+1)=1;
    
else
    OH2(T)=1;
end
matOH2(i,j,:)=OH2;
    end
end
%%%%%%%%%%%%%%
C3 = zeros(32,32,10);
OH3=zeros(1,T);
for i=1:32
    for j=1:32
        OH3=zeros(1,T);
if(cc3(i,j)<T)
    OH3(cc3(i,j)+1)=1;
    
else
    OH3(T)=1;
end
matOH3(i,j,:)=OH3;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%
C4 = zeros(32,32,10);
OH4=zeros(1,T);
for i=1:32
    for j=1:32
        OH4=zeros(1,T);
if(cc4(i,j)<T)
    OH4(cc4(i,j)+1)=1;
    
else
    OH4(T)=1;
end
matOH4(i,j,:)=OH4;
    end
end

%%%%%%%%%%%%%%%%%%%%%%

C5 = zeros(32,32,10);
OH5=zeros(1,T);
for i=1:32
    for j=1:32
        OH5=zeros(1,T);
if(cc5(i,j)<T)
    OH5(cc5(i,j)+1)=1;
    
else
    OH5(T)=1;
end
matOH5(i,j,:)=OH5;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C6 = zeros(32,32,10);
% OH6=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH6=zeros(1,T);
% if(cc6(i,j)<T)
%     OH6(cc6(i,j)+1)=1;
%     
% else
%     OH6(T)=1;
% end
% matOH6(i,j,:)=OH6;
%     end
% end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% C7 = zeros(32,32,10);
% OH7=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH7=zeros(1,T);
% if(cc7(i,j)<T)
%     OH7(cc7(i,j)+1)=1;
%     
% else
%     OH7(T)=1;
% end
% matOH7(i,j,:)=OH7;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%
% C8 = zeros(32,32,10);
% OH8=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH8=zeros(1,T);
% if(cc8(i,j)<T)
%     OH8(cc8(i,j)+1)=1;
%     
% else
%     OH8(T)=1;
% end
% matOH8(i,j,:)=OH8;
%     end
% end
%%%%%%%%%%%%%%%
C9 = zeros(32,32,10);
OH9=zeros(1,T);
for i=1:32
    for j=1:32
        OH9=zeros(1,T);
if(cc9(i,j)<T)
    OH9(cc9(i,j)+1)=1;
    
else
    OH9(T)=1;
end
matOH9(i,j,:)=OH9;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%
C10 = zeros(32,32,10);
OH10=zeros(1,T);
for i=1:32
    for j=1:32
        OH10=zeros(1,T);
if(cc10(i,j)<T)
    OH10(cc10(i,j)+1)=1;
    
else
    OH10(T)=1;
end
matOH10(i,j,:)=OH10;
    end
end

%%%%%%%%%%%%%%%%%%%%%%

C11 = zeros(32,32,10);
OH11=zeros(1,T);
for i=1:32
    for j=1:32
        OH11=zeros(1,T);
if(cc11(i,j)<T)
    OH11(cc11(i,j)+1)=1;
    
else
    OH11(T)=1;
end
matOH11(i,j,:)=OH11;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C12 = zeros(32,32,10);
OH12=zeros(1,T);
for i=1:32
    for j=1:32
        OH12=zeros(1,T);
if(cc12(i,j)<T)
    OH12(cc12(i,j)+1)=1;
    
else
    OH12(T)=1;
end
matOH12(i,j,:)=OH12;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% C13 = zeros(32,32,10);
% OH13=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH13=zeros(1,T);
% if(cc13(i,j)<T)
%     OH13(cc13(i,j)+1)=1;
%     
% else
%     OH13(T)=1;
% end
% matOH13(i,j,:)=OH13;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% C14 = zeros(32,32,10);
% OH14=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH14=zeros(1,T);
% if(cc14(i,j)<T)
%     OH14(cc14(i,j)+1)=1;
%     
% else
%     OH14(T)=1;
% end
% matOH14(i,j,:)=OH14;
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

C15 = zeros(32,32,10);
OH15=zeros(1,T);
for i=1:32
    for j=1:32
        OH15=zeros(1,T);
if(cc15(i,j)<T)
    OH15(cc15(i,j)+1)=1;
    
else
    OH15(T)=1;
end
matOH15(i,j,:)=OH15;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%

C16 = zeros(32,32,10);
OH16=zeros(1,T);
for i=1:32
    for j=1:32
        OH16=zeros(1,T);
if(cc16(i,j)<T)
    OH16(cc16(i,j)+1)=1;
    
else
    OH16(T)=1;
end
matOH16(i,j,:)=OH16;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%

C17 = zeros(32,32,10);
OH17=zeros(1,T);
for i=1:32
    for j=1:32
        OH17=zeros(1,T);
if(cc17(i,j)<T)
    OH17(cc17(i,j)+1)=1;
    
else
    OH17(T)=1;
end
matOH17(i,j,:)=OH17;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%

C18 = zeros(32,32,10);
OH18=zeros(1,T);
for i=1:32
    for j=1:32
        OH18=zeros(1,T);
if(cc18(i,j)<T)
    OH18(cc18(i,j)+1)=1;
    
else
    OH18(T)=1;
end
matOH18(i,j,:)=OH18;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%

% C19 = zeros(32,32,10);
% OH19=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH19=zeros(1,T);
% if(cc19(i,j)<T)
%     OH19(cc19(i,j)+1)=1;
%     
% else
%     OH19(T)=1;
% end
% matOH19(i,j,:)=OH19;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%
% 
% C20 = zeros(32,32,10);
% OH20=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH20=zeros(1,T);
% if(cc20(i,j)<T)
%     OH20(cc20(i,j)+1)=1;
%     
% else
%     OH20(T)=1;
% end
% matOH20(i,j,:)=OH20;
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%
C21 = zeros(32,32,10);
OH21=zeros(1,T);
for i=1:32
    for j=1:32
        OH21=zeros(1,T);
if(cc21(i,j)<T)
    OH2(cc21(i,j)+1)=1;
    
else
    OH21(T)=1;
end
matOH21(i,j,:)=OH21;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%
C22 = zeros(32,32,10);
OH22=zeros(1,T);
for i=1:32
    for j=1:32
        OH22=zeros(1,T);
if(cc22(i,j)<T)
    OH2(cc22(i,j)+1)=1;
    
else
    OH22(T)=1;
end
matOH22(i,j,:)=OH22;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%
C23 = zeros(32,32,10);
OH23=zeros(1,T);
for i=1:32
    for j=1:32
        OH23=zeros(1,T);
if(cc23(i,j)<T)
    OH23(cc23(i,j)+1)=1;
    
else
    OH23(T)=1;
end
matOH23(i,j,:)=OH23;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%
% C24 = zeros(32,32,10);
% OH24=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH24=zeros(1,T);
% if(cc24(i,j)<T)
%     OH24(cc24(i,j)+1)=1;
%     
% else
%     OH24(T)=1;
% end
% matOH24(i,j,:)=OH24;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%
% C25 = zeros(32,32,10);
% OH25=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH25=zeros(1,T);
% if(cc25(i,j)<T)
%     OH25(cc25(i,j)+1)=1;
%     
% else
%     OH25(T)=1;
% end
% matOH25(i,j,:)=OH25;
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%
C26 = zeros(32,32,10);
OH26=zeros(1,T);
for i=1:32
    for j=1:32
        OH26=zeros(1,T);
if(cc26(i,j)<T)
    OH26(cc26(i,j)+1)=1;
    
else
    OH26(T)=1;
end
matOH26(i,j,:)=OH26;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%
C27 = zeros(32,32,10);
OH27=zeros(1,T);
for i=1:32
    for j=1:32
        OH27=zeros(1,T);
if(cc27(i,j)<T)
    OH27(cc27(i,j)+1)=1;
    
else
    OH27(T)=1;
end
matOH27(i,j,:)=OH27;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%
% C28 = zeros(32,32,10);
% OH28=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH28=zeros(1,T);
% if(cc28(i,j)<T)
%     OH28(cc28(i,j)+1)=1;
%     
% else
%     OH28(T)=1;
% end
% matOH28(i,j,:)=OH28;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%
% C29 = zeros(32,32,10);
% OH29=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH29=zeros(1,T);
% if(cc29(i,j)<T)
%     OH29(cc29(i,j)+1)=1;
%     
% else
%     OH29(T)=1;
% end
% matOH29(i,j,:)=OH29;
%     end
% end
%%%%%%%%%%%%%%%
C30 = zeros(32,32,10);
OH30=zeros(1,T);
for i=1:32
    for j=1:32
        OH30=zeros(1,T);
if(cc30(i,j)<T)
    OH30(cc30(i,j)+1)=1;
    
else
    OH30(T)=1;
end
matOH30(i,j,:)=OH30;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%
% C31 = zeros(32,32,10);
% OH31=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH31=zeros(1,T);
% if(cc31(i,j)<T)
%     OH31(cc31(i,j)+1)=1;
%     
% else
%     OH31(T)=1;
% end
% matOH31(i,j,:)=OH31;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%
% 
% C32 = zeros(32,32,10);
% OH32=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH32=zeros(1,T);
% if(cc32(i,j)<T)
%     OH32(cc32(i,j)+1)=1;
%     
% else
%     OH32(T)=1;
% end
% matOH32(i,j,:)=OH32;
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% C33 = zeros(32,32,10);
% OH33=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH33=zeros(1,T);
% if(cc33(i,j)<T)
%     OH33(cc33(i,j)+1)=1;
%     
% else
%     OH33(T)=1;
% end
% matOH33(i,j,:)=OH33;
%     end
% end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% C34 = zeros(32,32,10);
% OH34=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH34=zeros(1,T);
% if(cc34(i,j)<T)
%     OH34(cc34(i,j)+1)=1;
%     
% else
%     OH34(T)=1;
% end
% matOH34(i,j,:)=OH34;
%     end
% end

%%%%%%%%%%%%%%
% C35 = zeros(32,32,10);
% OH35=zeros(1,T);
% for i=1:32
%     for j=1:32
%         OH35=zeros(1,T);
% if(cc35(i,j)<T)
%     OH35(cc35(i,j)+1)=1;
%     
% else
%     OH35(T)=1;
% end
% matOH35(i,j,:)=OH35;
%     end
% end
matOH = cat(3,matOH1, matOH2, matOH3, matOH4, matOH5, matOH9, matOH10, matOH11, matOH12,matOH15, matOH16, matOH17, matOH18, matOH21,matOH22,matOH23,matOH26,matOH27,matOH30)
        
% matOHA = cat(2, matOH1, matOH2)
% matOHB = cat(2, matOH3, matOH4)
% matOH = cat(1, matOHA, matOHB)

fname=sprintf('%d-onehot.mat',k);
save(fullfile(savehere,fname), 'matOH','-v7')

% save('onehot.mat','matOH','-v7')
end