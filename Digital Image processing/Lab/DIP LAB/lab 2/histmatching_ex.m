A=imread('moon.tif');
subplot(3,2,1);
imshow(A);
subplot(3,2,2);
imhist(A);
title('histogram example');
B=histeq(A);
subplot(3,2,3);
imshow(B);
subplot(3,2,4);
imhist(B);

%d=ones(1,256);
%d(1)=128;
d = linspace(0,1,256); 
z=histeq(A,d);
subplot(3,2,5);
imshow(z);
subplot(3,2,6);
imhist(z);
