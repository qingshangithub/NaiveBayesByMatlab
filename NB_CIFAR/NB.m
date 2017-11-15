clc
testData =load('test_batch.mat');
trainData1=load('data_batch_1.mat');
trainData2=load('data_batch_2.mat');
trainData3=load('data_batch_3.mat');
trainData4=load('data_batch_4.mat');
trainData5=load('data_batch_5.mat');
threshhold=119;
trainImages=double([trainData1.data;trainData2.data;trainData3.data;trainData4.data;trainData5.data]');
trainLabels=double([trainData1.labels;trainData2.labels;trainData3.labels;trainData4.labels;trainData5.labels]);
testImages=double(testData.data');
testLabels=double(testData.labels);
tic
%¶þÖµ»¯Í¼Ïñ
    trainImages(trainImages<=threshhold) = 0;
    trainImages(trainImages>threshhold) = 1;

    %label +1 
    trainLabels = trainLabels+1;
    testLabels= testLabels+1;
    m = train(trainImages,trainLabels,10);
    testImages(testImages<=threshhold) = 0;
    testImages(testImages>threshhold) = 1;
    yp = classify(testImages,testLabels,m);
    disp(threshhold);
    accuracy = sum(yp' == testLabels)/length(testLabels);
    disp(accuracy);
toc