% Read the indexed image with its colormap
[kids, color] = imread('kids.tif');

% Convert indexed image to RGB
kids = ind2rgb(kids, color);

% Shrink the image
kids_nearest = imresize(kids, 0.5, 'nearest'); % Nearest neighbor interpolation
kids_bilinear = imresize(kids, 0.5, 'bilinear'); % Bilinear interpolation
kids_bicubic = imresize(kids, 0.5, 'bicubic'); % Bicubic interpolation

% Display the images
figure;
subplot(1, 3, 1);
imshow(kids_nearest);
title('Nearest Neighbor Interpolation');

subplot(1, 3, 2);
imshow(kids_bilinear);
title('Bilinear Interpolation');

subplot(1, 3, 3);
imshow(kids_bicubic);
title('Bicubic Interpolation');
