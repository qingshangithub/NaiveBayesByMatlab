for j=1:5%��ȡѵ��������
    load(['data_batch_' num2str(j) '.mat'])
     data(data<=119) = 0;
     data(data>119) = 1;
    for i=1:size(data,1)
        p=data(i,:);
        label=labels(i);

        fig=zeros(32,32,1);
        fig(:,:,1)=reshape(p(1:1024),32,32)';
        %fig(:,:,2)=reshape(p(1025:2048),32,32)';
        %fig(:,:,3)=reshape(p(2049:end),32,32)';

        %�����ݱ���ΪPNG��ʽ
        imwrite(fig/256,['image2/batch_' num2str(j) '_label_' num2str(label) '_' num2str(i)  '.png'])
    end
end