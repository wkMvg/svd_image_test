% wk svd test
% using a img and convert to grayscale
% using svd decomposition, using the top 10% singular value to describe the
% img, then we will see that image keep the good features

img = imread('F:\data\66\image\DSC00003.JPG');
img = rgb2gray(img);
[u,s,v]=svd(double(img));

img_decom = u(:,1:50) * s(1:50,1:50) * v(:,1:50)';
figure; imshow(uint8(img_decom));