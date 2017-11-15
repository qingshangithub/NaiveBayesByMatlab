function model = train(x,y,M)
    %x : 样本 每列代表一张图片,每行代表每个维度
    %y : 标签 
    %J : 分类数
    [D,N] = size(x); %D为维度， N为图像个数
    px = sum(x,2)/N;
    %py(i)表示标签为i的图像个数
    py= zeros(M,1);
    for j = 1:M
        py(j) = sum(y == j);
    end

    %pxy 10行D列，i行j列表示图片归类为i标签时第j个特征为1的概率
    pxy = zeros(M,D);
    for j=1:M
        xj = x(:,y == j); %标签为j的图片
        pxy(j,:) = sum(xj,2) / size(xj,2);
    end
    model.px = px;
    model.py = py;
    model.pxy = pxy;
    model.M = M;
end



