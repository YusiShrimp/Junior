% 1. Read the image
img = imread("C:\Users\86136\Desktop\Digital Image processing\Lab\DIP LAB\lab 3\lib.jpg");

% 2. Display the original color image
figure;

subplot(3, 2, 1);
imshow(img);
title('Original Color Image');

% 3. Convert to grayscale image
gray_img = rgb2gray(img);

% Display the original grayscale image and the image with noise
subplot(3, 2, 2);
imshow(gray_img);
title('Original Gray Image');

% 4. Add noise
GIMGNoise = imnoise(gray_img, 'salt & pepper', 0.02);

subplot(3, 2, 3);
imshow(GIMGNoise);
title('Image with Noise');

% 5. Smooth the image using the averaging filter (3x3 and 5x5 masks)
avg_filter_3x3 = fspecial('average', [3 3]);
avg_filtered_img_3x3 = imfilter(GIMGNoise, avg_filter_3x3);

avg_filter_5x5 = fspecial('average', [5 5]);
avg_filtered_img_5x5 = imfilter(GIMGNoise, avg_filter_5x5);

subplot(3, 2, 4);
imshow(avg_filtered_img_3x3);
title('Averaging Filter 3x3');

subplot(3, 2, 5);
imshow(avg_filtered_img_5x5);
title('Averaging Filter 5x5');

% 6. Smooth the image using the Gaussian filter with varying sigma values
figure;

% Gaussian filter with 3x3 mask and sigma = 0.5
gaussian_filter_3x3_sigma_0_5 = fspecial('gaussian', [3 3], 0.5);
gaussian_filtered_img_3x3_sigma_0_5 = imfilter(GIMGNoise, gaussian_filter_3x3_sigma_0_5);

subplot(3, 2, 1);
imshow(gaussian_filtered_img_3x3_sigma_0_5);
title('Gaussian Filter 3x3, Sigma 0.5');

% Gaussian filter with 3x3 mask and sigma = 1
gaussian_filter_3x3_sigma_1 = fspecial('gaussian', [3 3], 1);
gaussian_filtered_img_3x3_sigma_1 = imfilter(GIMGNoise, gaussian_filter_3x3_sigma_1);

subplot(3, 2, 2);
imshow(gaussian_filtered_img_3x3_sigma_1);
title('Gaussian Filter 3x3, Sigma 1');

% Gaussian filter with 5x5 mask and sigma = 0.5
gaussian_filter_5x5_sigma_0_5 = fspecial('gaussian', [5 5], 0.5);
gaussian_filtered_img_5x5_sigma_0_5 = imfilter(GIMGNoise, gaussian_filter_5x5_sigma_0_5);

subplot(3, 2, 3);
imshow(gaussian_filtered_img_5x5_sigma_0_5);
title('Gaussian Filter 5x5, Sigma 0.5');

% Gaussian filter with 5x5 mask and sigma = 1
gaussian_filter_5x5_sigma_1 = fspecial('gaussian', [5 5], 1);
gaussian_filtered_img_5x5_sigma_1 = imfilter(GIMGNoise, gaussian_filter_5x5_sigma_1);

subplot(3, 2, 4);
imshow(gaussian_filtered_img_5x5_sigma_1);
title('Gaussian Filter 5x5, Sigma 1');

% 7. Design a custom smoothing mask
custom_mask = [1 2 1; 2 4 2; 1 2 1] / 16;
custom_filtered_img = imfilter(GIMGNoise, custom_mask);

% Display the image smoothed with the custom mask
subplot(3, 2, 5);
imshow(custom_filtered_img);
title('Custom Smoothing Mask');

% Display the original noise image
subplot(3, 2, 6);
imshow(GIMGNoise);
title('Original Noise Image');
