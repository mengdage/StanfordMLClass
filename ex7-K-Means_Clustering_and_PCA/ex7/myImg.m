mz = double(imread('maozi.jpg'));

% feature scaling
mz = mz/256;
mz_size = size(mz);
mz_reshape = reshape(mz, mz_size(1)*mz_size(2), mz_size(3));

% number of clusters 
K = 16;
% number of interations
max_iters = 10;

% randomly set the inistial centroids
initial_centroids = kMeansInitCentroids(mz_reshape, K);

% run k means on the data
[centroids, idx]=runkMeans(mz_reshape, initial_centroids, max_iters);

%%

% reconstruction the image
mz_reconstructed = centroids(idx,:);
mz_reconstructed =reshape(mz_reconstructed, mz_size(1), mz_size(2), mz_size(3));

subplot(1,2,1);
imagesc(mz);
title('Original');

subplot(1,2,2);
imagesc(mz_reconstructed);
title(sprintf('Compressed, with %d color.', K));


