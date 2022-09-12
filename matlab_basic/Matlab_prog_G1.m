% Init empty matrix
A = zeros(5,20)

% Fill first five rows with random integers from uniform distribution
A(:,1:5) = rand(5);

% Fill 6-10 with random numbers from normal distribution
A(:,6:10) = randn(5);

% Fill 11-15 with ones
A(:,11:15) = 1;

% Fill 16-20 with reversed first five columns
% x:y:z will go from x to z in steps of y
A(:,16:20) = A(5:-1:1, 1:5);

% Create B as a 5x10 Matrix that contains the first 10 columns from A
B = A(:,1:10);

%Create C as a 5x10 Matrix that contains the odd numbered columns from A
C = A(:,1:2:20);

%Create D as a 5x10 Matrix that contains randomly sampled columns of A
%First without replacement (randperm)
%Sample from 1:N (N=20) 10 times. For some stupid reason you can't define
%x:N but are forced to go with 1:N

D = A(:, randperm(20, 10));

%Then with replacement (randi)
%sample 10 times once from the range of 1:20
D2 = A(:, randi([1, 20], 10, 1));