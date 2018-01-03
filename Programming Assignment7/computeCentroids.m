function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for i=1:K,
  % this idx==i, do a logical operation and whereever the value of i exist the value at that index becomes 1.
  centroid_exist = idx==i;  
  
  %since centroid_exist has only 1 value wherever the idx values is i, so sum will give the number of elements belonging to centroid i.
  count = sum(centroid_exist);
  
  % CENTROID_EXIST' *X WILL GIVE A 1*1 VALUE, CONTAINING THE SUM OF ALL THE ELEMENTS WHICH BELONG TO CENTROID i.
  if(count != 0)
    centroids(i,:)=(1/count) * (centroid_exist' * X);
  else
    printf('\n value of count is: 0');
  endif

% =============================================================


end

