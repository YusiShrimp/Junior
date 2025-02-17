% Create a folder and save the image
folder = 'c:\imagetest';
if ~exist(folder, 'dir')
    mkdir(folder);
end

% Save the image
imwrite(f, fullfile(folder, 'tire.tif'));
