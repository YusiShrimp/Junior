% 读取图像
image1 = imread("C:\License\IDcard.jpg");
image2 = imread("C:\License\Cat.jpg");

% 转换为灰度图像（如有必要）
gray_image1 = rgb2gray(image1);
gray_image2 = rgb2gray(image2);

% 调整图像大小使其一致
[rows1, cols1] = size(gray_image1);
[rows2, cols2] = size(gray_image2);
min_rows = min(rows1, rows2);
min_cols = min(cols1, cols2);
gray_image1 = imresize(gray_image1, [min_rows, min_cols]);
gray_image2 = imresize(gray_image2, [min_rows, min_cols]);

% 执行傅里叶变换
F1 = fft2(double(gray_image1));
F2 = fft2(double(gray_image2));

% 获取幅度和相位信息
magnitude1 = abs(F1);
phase1 = angle(F1);
magnitude2 = abs(F2);
phase2 = angle(F2);

% 重叠操作
% 图像1的幅度和图像2的相位
combined_image1 = magnitude1 .* exp(1i * phase2);
% 图像2的幅度和图像1的相位
combined_image2 = magnitude2 .* exp(1i * phase1);

% 逆傅里叶变换得到混合图像
result_image1 = ifft2(combined_image1);
result_image2 = ifft2(combined_image2);

% 获取实部并转换为 uint8 类型
result_image1 = uint8(real(result_image1));
result_image2 = uint8(real(result_image2));

% 显示结果
figure;
subplot(2, 2, 1);
imshow(gray_image1);
title('Original Image 1');

subplot(2, 2, 2);
imshow(gray_image2);
title('Original Image 2');

subplot(2, 2, 3);
imshow(result_image1);
title('Magnitude1 & Phase2');

subplot(2, 2, 4);
imshow(result_image2);
title('Magnitude2 & Phase1');
