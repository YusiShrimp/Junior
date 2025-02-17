% Read the grayscale image
img = imread("C:\License\selfie2.jpg"); % Replace with your image path
gray_img = rgb2gray(img);
figure, imshow(gray_img), title('Original Grayscale Image');

% Perform Fourier Transform
F = fft2(double(gray_img));
F_shifted = fftshift(F);

% Apply High-pass filters with different cut-off frequencies
D0_values = [10, 30, 60]; % Different cut-off frequencies
for D0 = D0_values
    H_ideal_high = idealHPF(D0, size(gray_img, 1), size(gray_img, 2));
    H_butter_high = butterworthHPF(D0, 2, size(gray_img, 1), size(gray_img, 2)); % n=2
    H_gaussian_high = gaussianHPF(D0, size(gray_img, 1), size(gray_img, 2));

    % Filter the image
    F_ideal_high = H_ideal_high .* F_shifted;
    F_butter_high = H_butter_high .* F_shifted;
    F_gaussian_high = H_gaussian_high .* F_shifted;

    img_ideal_high = ifft2(ifftshift(F_ideal_high));
    img_ideal_high = abs(img_ideal_high);
    img_butter_high = ifft2(ifftshift(F_butter_high));
    img_butter_high = abs(img_butter_high);
    img_gaussian_high = ifft2(ifftshift(F_gaussian_high));
    img_gaussian_high = abs(img_gaussian_high);

    % Display filtered images
    figure, imshow(img_ideal_high, []), title(['Ideal HPF (D0=' num2str(D0) ')']);
    figure, imshow(img_butter_high, []), title(['Butterworth HPF (D0=' num2str(D0) ')']);
    figure, imshow(img_gaussian_high, []), title(['Gaussian HPF (D0=' num2str(D0) ')']);
end

% Define High-pass filter functions
function H = idealHPF(D0, M, N)
    H = 1 - idealLPF(D0, M, N);
end

function H = butterworthHPF(D0, n, M, N)
    H = 1 - butterworthLPF(D0, n, M, N);
end

function H = gaussianHPF(D0, M, N)
    H = 1 - gaussianLPF(D0, M, N);
end

% Define Low-pass filter functions
function H = idealLPF(D0, M, N)
    [U, V] = meshgrid(1:N, 1:M);
    D = sqrt((U - N/2).^2 + (V - M/2).^2);
    H = double(D <= D0);
end

function H = butterworthLPF(D0, n, M, N)
    [U, V] = meshgrid(1:N, 1:M);
    D = sqrt((U - N/2).^2 + (V - M/2).^2);
    H = 1 ./ (1 + (D ./ D0).^(2*n));
end

function H = gaussianLPF(D0, M, N)
    [U, V] = meshgrid(1:N, 1:M);
    D = sqrt((U - N/2).^2 + (V - M/2).^2);
    H = exp(-(D.^2) / (2 * D0^2));
end
