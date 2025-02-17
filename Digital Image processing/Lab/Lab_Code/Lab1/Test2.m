% Using size
tireSize = size(tire);
riceSize = size(rice);

% Using imfinfo
tireInfo = imfinfo('tire.tif');
riceInfo = imfinfo('rice.png');

% Using whos
tireWhos = whos('tire');
riceWhos = whos('rice');

% Display the information
disp('Tire Image Size:');
disp(tireSize);
disp('Rice Image Size:');
disp(riceSize);

disp('Tire Image Info:');
disp(tireInfo);
disp('Rice Image Info:');
disp(riceInfo);

disp('Tire Image Whos:');
disp(tireWhos);
disp('Rice Image Whos:');
disp(riceWhos);
