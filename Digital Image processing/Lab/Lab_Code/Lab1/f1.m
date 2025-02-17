% 读取图像
spine = imread("C:\Users\86136\Desktop\Digital Image processing\Lab\DIP LAB\lab 1\spine.tif");
spine_double = im2double(spine);

% 参数c的不同值
c_values = [0.5, 1, 1.5,2,2.5,3,3.5,4];

% 应用对数变换并显示结果
figure;
for i = 1:length(c_values)
    c = c_values(i);
    spine_log = c * log(1 + spine_double);
    subplot(1, length(c_values), i);
    imshow(spine_log);
    title(['Log Transform, c = ', num2str(c)]);
end
