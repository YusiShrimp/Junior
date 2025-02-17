% Zoom the images back to original size
kids_nearest_zoomed = imresize(kids_nearest, 2, 'nearest');
kids_bilinear_zoomed = imresize(kids_bilinear, 2, 'bilinear');
kids_bicubic_zoomed = imresize(kids_bicubic, 2, 'bicubic');

% Display the zoomed images
figure;
subplot(1, 3, 1);
imshow(kids_nearest_zoomed);
title('Zoomed Nearest Neighbor');

subplot(1, 3, 2);
imshow(kids_bilinear_zoomed);
title('Zoomed Bilinear');

subplot(1, 3, 3);
imshow(kids_bicubic_zoomed);
title('Zoomed Bicubic');
