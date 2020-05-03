clear all; 
close all;
size = 1000;
%X = rand_exp(size);
X = randn(1,size);
Y = rand(1,size);
est_EX = sum(X)/size;
est_VAR = 0;

for n=1:size
   est_VAR = est_VAR + (est_EX - X(n)).*(est_EX - X(n)); 
end
est_VAR = est_VAR./size;

est_COR = estimator_COR(X,X);