% Rotate the image by a specified degree
angle = 45; % Specify the degree of rotation
kids_rotated = imrotate(kids, angle);

% Display the rotated image
figure;
imshow(kids_rotated);
title(['Rotated Image by ', num2str(angle), ' Degrees']);
