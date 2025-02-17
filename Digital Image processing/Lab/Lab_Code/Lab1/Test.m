% Read images
tire = imread('tire.tif');
rice = imread('rice.png');

% Display images in one figure
figure;
subplot(1, 2, 1);
imshow(tire);
title('Tire Image');
subplot(1, 2, 2);
imshow(rice);
title('Rice Image');

% Display images in two separate figures
figure;
imshow(tire);
title('Tire Image');

figure;
imshow(rice);
title('Rice Image');
