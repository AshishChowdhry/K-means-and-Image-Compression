function centroids = computeCentroids(X, idx, K)
[m n] = size(X);
centroids = zeros(K, n);
for i=1:K
    b=find(idx==i);
    temp=X(b,:);
    centroids(i,:)=sum(temp,1);
    centroids(i,:)=centroids(i,:)/size(b,1);
end
end

