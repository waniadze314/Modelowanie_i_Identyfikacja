function value = estimator_COR(probes1, probes2)
size = length(probes1);
EX = estimator_EX(probes1);
EY = estimator_EX(probes2);


tmp_up = sum((probes1-EX).*(probes2-EY))/size;

tmp_down_x = sum(probes1.*probes1 - EX*EX)./size;
tmp_down_y = sum(probes2.*probes2 - EY*EY)./size;

value = tmp_up/(sqrt(tmp_down_x*tmp_down_y));
end