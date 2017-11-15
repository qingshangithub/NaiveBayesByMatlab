# NaiveBayesByMatlab

NaiveBayes算法的matlab实现。训练了两个数据集，分别是MNIST和CIFAR，

1. 数据库下载地址：
   1. mnist ： http://yann.lecun.com/exdb/mnist/	
   2. cifar10： https://www.kaggle.com/c/cifar-10/data
2. NB_MNIST运行环境：将MNIST四个数据集文件加入文件夹内即可运行。
   1. 在matlab2017b环境下编写测试
   2. 默认运行全部数据，大约耗时几秒
3. NB_CIFAR运行环境：将CIFAR七个数据集文件加入文件夹内即可运行。
   1. 在matlab2017b环境下编写测试
   2. 默认运行全部数据，大约耗时4秒
   3. 准确率28.24%
4. ​朴素贝叶斯实现较粗略，使用二项分布，如果换用高斯朴素贝叶斯，对于CIFAR的效果可能会好一些。