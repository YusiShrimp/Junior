% Read the image and convert it to grayscale
img = imread("C:\License\selfie1.jpg"); % Replace with your image path
gray_img = rgb2gray(img);
figure, imshow(gray_img), title('Original Grayscale Image');

% Perform Fourier transform
F = fft2(double(gray_img));
F_shifted = fftshift(F);
magnitude = abs(F_shifted);
phase = angle(F_shifted);

% Display the magnitude image and phase angle image in the frequency domain
figure, imshow(log(1 + magnitude), []), title('Magnitude Image');
figure, imshow(phase, []), title('Phase Angle Image');

% Perform inverse Fourier transform
F_inv_shifted = ifftshift(F_shifted);
img_reconstructed = ifft2(F_inv_shifted);
img_reconstructed = abs(img_reconstructed);
figure, imshow(img_reconstructed, []), title('Reconstructed Image');

% Compare the reconstructed image with the original image
difference = immse(gray_img, img_reconstructed);
fprintf('Mean Squared Error (MSE): %f\n', difference);
