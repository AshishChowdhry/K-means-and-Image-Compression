function idx = findClosestCentroids(X, centroids)
K = size(centroids, 1);
idx = zeros(size(X,1), 1);
for i=1:size(idx)
    min=1/0;
    for j=1:K
        a=X(i,:)-centroids(j,:);
        a=a.^2;
        a=sum(a);
        if a<min
            min=a;
            b=j;
        end
    end
    idx(i)=b;
end;
end

