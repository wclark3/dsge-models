load params.mat

istar=1/beta - 1;

save("params.mat", "istar", "-append");
