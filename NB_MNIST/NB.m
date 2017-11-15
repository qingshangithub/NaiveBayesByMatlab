clc
trainlabels = loadMNISTLabels('train-labels.idx1-ubyte');
trainimages = loadMNISTImages('train-images.idx3-ubyte');
testlabels = loadMNISTLabels('t10k-labels.idx1-ubyte')+1;
testimages = loadMNISTImages('t10k-images.idx3-ubyte');
%¶þÖµ»¯Í¼Ïñ

trainimages(trainimages<=0.1) = 0;
trainimages(trainimages>0.1) = 1;
trainlabels = trainlabels+1;

m = train(trainimages,trainlabels,10);
testimages(testimages>0) = 1;
labelResult = classify(testimages,testlabels,m);
accuracy = sum(labelResult' == testlabels)/length(testlabels);
disp(accuracy);
