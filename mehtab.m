clc
clear all
close all
I=imread('C:/Users/sajid/Desktop/Main_file.png');
imshow(I);
title("drag a rectangle");

a=getrect();
xmin=round(a(1));
ymin=round(a(2));
width=round(a(3));
height=round(a(4));
figure   %nl
axis tight
hold on

xlim=ymin:ymin+height;
ylim=xmin:xmin+width;
I_new=I(xlim,ylim);
imshow(I_new)
%h = image(xlim,-ylim,I_new); 
%cropped_image=I(ymin:ymin+height,xmin:xmin+width);  %cropped image
%imshow(cropped_image)
title("Cropped Image");
xlabel('X/D')
ylabel('Y/D')
axis on
%xticks([10 50 100 150 200 250])
xticklabels({'0','50','100','150','200','250'})
%yticks([10 20 30 40 50 60])
yticklabels({'0','50','100','150','200','250'})

