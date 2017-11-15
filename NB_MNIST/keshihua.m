clc;
clear;
close all;
image_file_name='t10k-images.idx3-ubyte';
index_file_name='t10k-labels.idx1-ubyte';

fid1=fopen(image_file_name,'rb');
fid2=fopen(index_file_name,'rb');

image_data=fread(fid1,'uint8');
index_data=fread(fid2,'uint8');

fclose(fid1);
fclose(fid2);

image_data=image_data(17:end);
index_data=index_data(9:end);
image_buffer=zeros(28,28);

for k=1:100:length(image_data)/28/28
    figure(1);
    t=1;
%     for t=1:10000
        image_buffer=reshape(image_data((k+t-2)*28*28+1:(k+t-1)*28*28),28,28)';
        subplot(100,100,t);
        imshow(uint8(image_buffer)');
        title(num2str(index_data(k+t-1)));
%     end
end