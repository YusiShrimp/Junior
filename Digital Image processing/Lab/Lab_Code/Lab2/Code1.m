% 1. Read the image
img = imread('tire.tif');

% Create a new figure window
figure;

% Display the original image
subplot(2, 2, 1);
imshow(img);
title('Original Image');

% 2. Display the histogram of the original image
subplot(2, 2, 2);
imhist(img);
title('Original Histogram');

% 3. Perform histogram equalization
equalized_img = histeq(img);

% 4. Display the equalized image
subplot(2, 2, 3);
imshow(equalized_img);
title('Equalized Image');

% 5. Display the histogram of the equalized image
subplot(2, 2, 4);
imhist(equalized_img);
title('Equalized Histogram');
