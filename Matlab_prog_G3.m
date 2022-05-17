%Create square matrix of uniformly distributed values from -5 to 5 (10x10).
%sqr_size for later adaptation
sqr_size = 1000;

A = -5 + (5 + 5) .* rand(sqr_size.*sqr_size,1);
x = sqrt(length(A));
A = reshape(A,x,x);

%Make a histogram of A
A_hist = hist(reshape(A,length(A)^2,1));

%Find min and max values of A
A_max = max(A,[],"all");
A_min = min(A,[],"all");

%mean and stdev of A
A_mean = mean(A,"all");
A_stdev = std(A,0,"all");

%Invert matrix
B = inv(A);

%Histogram, min, max, mean, stdev
B_hist = hist(reshape(B,length(B)^2,1));
B_min = min(B,[],"all");
B_max = max(B,[],"all");
B_mean = mean(B,"all");
B_stdev = std(B,0,"all");

%Is the inverse? Diagonals should all be ones. Allow some error due to
%decimals.
error = 0.001;
tmp_1 = diag(B*A);
tmp_2 = diag(ones(size(A)));
inv_check = tmp_1(tmp_2 <= tmp_1 + error & tmp_2 >= tmp_1 - error);

% Create A1. Substitute last column with the sum of the first three columns
A1 = A;
A1(:,end) = sum(A1(:,1:3),2);

B1 = inv(A1);
tmp_1 = diag(B1*A1);
tmp_2 = diag(ones(size(A1)));
inv_check_1 = tmp_1(tmp_2 <= tmp_1 + error & tmp_2 >= tmp_1 - error);


% Create A2. Substitute last row with the sum of the first three rows.
% Create inverse. Check inverse
A2 = A;
A2(end,:) = sum(A2(1:3,:),1);

B2 = inv(A2);
tmp_1 = diag(B2*A2);
tmp_2 = diag(ones(size(A2)));
inv_check_2 = tmp_1(tmp_2 <= tmp_1 + error & tmp_2 >= tmp_1 - error);

% Check using det, allow for error
det(A) <= 0+ error
det(A1) <= 0 + error
det(A2) <= 0 + error
