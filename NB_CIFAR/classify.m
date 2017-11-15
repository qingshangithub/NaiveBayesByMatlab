function labelResult = classify(x,y,model)
    px =model.px + 1e-10;
    pxy = model.pxy;
    py =model.py;
    M= model.M;

    [K,N] = size(x); %K为维度， N为待分类图像个数
    log_pxy = log(pxy+1e-10);
    tmp = repmat(px',N,1); % N*K
    log_pxik = x'.*log(tmp) + (1-x').*(1-log(tmp));
    t = sum(log_pxik,2);
    t =repmat(t',M,1);
    log_pyx = log_pxy*x + log(1-pxy)*(1-x) + repmat(log(py),1,N) -  t;
    [m,I] = max(log_pyx);
    labelResult = I;
end