[image, color] = imread('kids.tif');
image = ind2rgb(image, color);
image_nearset=imresize(image,2,"nearest");
figure;
imshow(image_nearset)
title('nearest');
image_bilinear=imresize(image,2,"bilinear");
figure;
imshow(image_bilinear)
title('bilinear');
image_bicubic=imresize(image,2,"bicubic");
figure;
imshow(image_bicubic)
title('bicubic');
image_nearset=imresize(image,0.5,"nearest");
figure;
imshow(image_nearset)
title('nearest');
image_bilinear=imresize(image,0.5,"bilinear");
figure;
imshow(image_bilinear)
title('bilinear');
image_bicubic=imresize(image,0.5,"bicubic");
figure;
imshow(image_bicubic)
title('bicubic');
image_crop=imcrop(image,[20 20 40 40]);
figure;
imshow(image_crop)
image_rotate=imrotate(image,20);
figure;
imshow(image_rotate)
