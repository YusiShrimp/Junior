% Read the grayscale image
img = imread("C:\License\selfie2.jpg"); % Replace with your image path
gray_img = rgb2gray(img);
figure, imshow(gray_img), title('Original Grayscale Image');

% Perform Fourier Transform
F = fft2(double(gray_img));
F_shifted = fftshift(F);

% Apply Low-pass filters with different cut-off frequencies
D0_values = [10, 30, 60]; % Different cut-off frequencies
for D0 = D0_values
    H_ideal = idealLPF(D0, size(gray_img, 1), size(gray_img, 2));
    H_butter = butterworthLPF(D0, 2, size(gray_img, 1), size(gray_img, 2)); % n=2
    H_gaussian = gaussianLPF(D0, size(gray_img, 1), size(gray_img, 2));

    % Filter the image
    F_ideal = H_ideal .* F_shifted;
    F_butter = H_butter .* F_shifted;
    F_gaussian = H_gaussian .* F_shifted;

    img_ideal = ifft2(ifftshift(F_ideal));
    img_ideal = abs(img_ideal);
    img_butter = ifft2(ifftshift(F_butter));
    img_butter = abs(img_butter);
    img_gaussian = ifft2(ifftshift(F_gaussian));
    img_gaussian = abs(img_gaussian);

    % Display filtered images
    figure, imshow(img_ideal, []), title(['Ideal LPF (D0=' num2str(D0) ')']);
    figure, imshow(img_butter, []), title(['Butterworth LPF (D0=' num2str(D0) ')']);
    figure, imshow(img_gaussian, []), title(['Gaussian LPF (D0=' num2str(D0) ')']);
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
