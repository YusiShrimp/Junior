% 1. Read the image
img = imread('moon.tif');

% Create a new figure window
figure;

% Display the original image
subplot(3, 2, 1);
imshow(img);
title('Original Image');

% 2. Display the histogram of the original image
subplot(3, 2, 2);
imhist(img);
title('Original Histogram');

% 3. Perform histogram equalization
equalized_img = histeq(img);

% 4. Display the equalized image
subplot(3, 2, 3);
imshow(equalized_img);
title('Equalized Image');

% 5. Display the histogram of the equalized image
subplot(3, 2, 4);
imhist(equalized_img);
title('Equalized Histogram');

% 6. Specify the histogram H = [256, 1, 1, ..., 1]
H = [256, ones(1, 255)];

% 7. Perform histogram matching
matched_img = histeq(img, H);

% 8. Display the matched image
subplot(3, 2, 5);
imshow(matched_img);
title('Matched Image');

% 9. Display the histogram of the matched image
subplot(3, 2, 6);
imhist(matched_img);
title('Matched Histogram');
