
myFolder = 'C:\Users\sunda\OneDrive - Amrita Vishwa Vidyapeetham\Breast Cancer Detection\Matlab code\BIRADS 6';
FilteredFolder = 'C:\Users\sunda\OneDrive - Amrita Vishwa Vidyapeetham\Breast Cancer Detection\Matlab code\Training';
filePattern = fullfile(myFolder, '*.jpg');
jpegFiles = dir(filePattern);
for k = 1:length(jpegFiles)
  baseFileName = jpegFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  FilterfileName = fullfile(FilteredFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);
  imageArray = imread(fullFileName);
  imageArray = imageArray(:,:,1);
  Noiseremoval = medfilt2(imageArray);
  peakSNR(k) = psnr(imageArray,Noiseremoval);
  Filterimage = adapthisteq(Noiseremoval,'clipLimit',0.02,'Distribution','exponential');
  imshow(Filterimage);
  imwrite(Filterimage, FilterfileName);
end