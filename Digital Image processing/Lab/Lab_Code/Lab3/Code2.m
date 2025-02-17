% 1. Read the image
img = imread("C:\Users\86136\Desktop\Digital Image processing\Lab\DIP LAB\lab 3\lib.jpg");

% 2. Convert to grayscale image
GIMG = rgb2gray(img);

% Display the original grayscale image
figure;
subplot(3, 3, 1);
imshow(GIMG);
title('Original Gray Image');

% 3. Use Laplacian mask to get the Laplacian images of GIMG
laplacian_masks = {
    [0 -1 0; -1 4 -1; 0 -1 0], ... % Mask 1
    [-1 -1 -1; -1 8 -1; -1 -1 -1], ... % Mask 2
    [1 -2 1; -2 4 -2; 1 -2 1], ... % Mask 3
    [-2 -1 -2; -1 12 -1; -2 -1 -2] % Mask 4
};

laplacian_images = cell(1, 4);
for i = 1:4
    laplacian_images{i} = imfilter(GIMG, laplacian_masks{i});
    subplot(3, 3, i+1);
    imshow(laplacian_images{i}, []);
    title(['Laplacian Mask ', num2str(i)]);
end

% 4. Add the Laplacian images on the image GIMG and compare the results
added_images = cell(1, 4);
for i = 1:4
    added_images{i} = imadd(GIMG, laplacian_images{i});
    subplot(3, 3, i+5);
    imshow(added_images{i}, []);
    title(['Added Laplacian Mask ', num2str(i)]);
end

% 5. Use Robert operator and Sobel operator to get the gradient image of GIMG
roberts_operator = [1 0; 0 -1]; % Define Roberts operator
gradient_roberts = imfilter(GIMG, roberts_operator);

sobel_operator = fspecial('sobel');
gradient_sobel = imfilter(GIMG, sobel_operator);

figure;
subplot(1, 2, 1);
imshow(gradient_roberts, []);
title('Roberts Gradient');

subplot(1, 2, 2);
imshow(gradient_sobel, []);
title('Sobel Gradient');

% 6. Design one sharpening mask to sharpen the image GIMG and show its results
custom_sharpening_mask = [0 -1 0; -1 5 -1; 0 -1 0];
sharpened_image = imfilter(GIMG, custom_sharpening_mask);

figure;
imshow(sharpened_image, []);
title('Custom Sharpening Mask');
