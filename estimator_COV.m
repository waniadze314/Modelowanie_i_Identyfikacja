function value = estimator_COV(probes1, probes2)
EXY = estimator_EX(probes1.*probes2);
EX = estimator_EX(probes1);
EY = estimator_EX(probes2);
value = EXY - EX.*EY;
end