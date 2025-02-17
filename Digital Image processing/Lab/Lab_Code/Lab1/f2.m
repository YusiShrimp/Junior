% 参数c和gamma的不同值
c_values = [0.5, 1, 2];
gamma_values = [0.5, 1, 1.5];

% 应用伽玛变换并显示结果
figure;
subplot_index = 1;
for i = 1:length(c_values)
    for j = 1:length(gamma_values)
        c = c_values(i);
        gamma = gamma_values(j);
        spine_gamma = c * (spine_double .^ gamma);
        subplot(length(c_values), length(gamma_values), subplot_index);
        imshow(spine_gamma);
        title(['Gamma Transform, c = ', num2str(c), ', \gamma = ', num2str(gamma)]);
        subplot_index = subplot_index + 1;
    end
end
