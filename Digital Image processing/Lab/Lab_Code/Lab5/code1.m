% Image Restoration Experiment

% 1. Load images
img1 = imread("C:\Users\86136\Desktop\Digital Image processing\Lab\DIP LAB\lab 5\N1580854213_1.IMG.jpeg");  % Load the first image
img2 = imread("C:\Users\86136\Desktop\Digital Image processing\Lab\DIP LAB\lab 5\N1846930971_1.IMG.jpeg");  % Load the second image

% 2. Display original images
figure;
subplot(2,2,1);
imshow(img1);
title('Original Image 1');

subplot(2,2,2);
imshow(img2);
title('Original Image 2');

% 3. Fourier Transform and Frequency Spectrum
fft_img1 = fftshift(fft2(img1));
fft_img2 = fftshift(fft2(img2));

% Display the frequency spectrum (log scale)
subplot(2,2,3);
imshow(log(1 + abs(fft_img1)), []);
title('Frequency Spectrum of Image 1');

subplot(2,2,4);
imshow(log(1 + abs(fft_img2)), []);
title('Frequency Spectrum of Image 2');

% 4. Low-pass Filtering (using average filter)
h_lp = fspecial('average', [5 5]);
img_lp_filtered1 = imfilter(img1, h_lp);

% Display low-pass filtered image
figure;
imshow(img_lp_filtered1);
title('High-pass Filtered Image 1');

% 5. High-pass Filtering (using Sobel filter)
h_hp = fspecial('sobel');
img_hp_filtered1 = imfilter(img1, h_hp);

% Display high-pass filtered image
figure;
imshow(img_hp_filtered1);
title('Low-pass Filtered Image 1');

% 6. Median Filtering
img_median_filtered1 = medfilt2(img1, [3 3]);

% Display median filtered image
figure;
imshow(img_median_filtered1);
title('Median Filtered Image 1');

% 7. Image Comparison and Evaluation (PSNR)
% Assuming you have the original noise-free images for PSNR calculation
% original_img1 = imread('path_to_original_image1'); % Path to the original image
% original_img2 = imread('path_to_original_image2'); % Path to the original image

% Calculate PSNR between original and filtered images
psnr_lp = psnr(img_lp_filtered1, img1);  % Low-pass filtered PSNR
psnr_hp = psnr(img_hp_filtered1, img1);  % High-pass filtered PSNR
psnr_median = psnr(img_median_filtered1, img1);  % Median filtered PSNR

% Display PSNR values
disp('PSNR values:');
disp(['Low-pass Filter PSNR: ', num2str(psnr_lp)]);
disp(['High-pass Filter PSNR: ', num2str(psnr_hp)]);
disp(['Median Filter PSNR: ', num2str(psnr_median)]);

% 8. Conclusion and Report
% In your report, include:
% - The method you chose to recover the image.
% - Explanation of why the method was chosen.
% - Original and restored images.
% - PSNR comparison between the methods.

