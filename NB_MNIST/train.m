function model = train(x,y,M)
    %x : ���� ÿ�д���һ��ͼƬ,ÿ�д���ÿ��ά��
    %y : ��ǩ 
    %J : ������
    [D,N] = size(x); %DΪά�ȣ� NΪͼ�����
    px = sum(x,2)/N;
    %py(i)��ʾ��ǩΪi��ͼ�����
    py= zeros(M,1);
    for j = 1:M
        py(j) = sum(y == j);
    end

    %pxy 10��D�У�i��j�б�ʾͼƬ����Ϊi��ǩʱ��j������Ϊ1�ĸ���
    pxy = zeros(M,D);
    for j=1:M
        xj = x(:,y == j); %��ǩΪj��ͼƬ
        pxy(j,:) = sum(xj,2) / size(xj,2);
    end
    model.px = px;
    model.py = py;
    model.pxy = pxy;
    model.M = M;
end



