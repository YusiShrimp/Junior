% Crop the image to specified size [startRow, startCol, numRows, numCols]
crop_size = [50, 50, 200, 200];
kids_cropped = imcrop(kids, crop_size);

% Display the cropped image
figure;
imshow(kids_cropped);
title('Cropped Image');
