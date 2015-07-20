function ert_mac_setup()
curpath = pwd;
tgtpath = curpath(1:end-length('/ert_mac'));
addpath(fullfile(tgtpath, 'ert_mac'));
savepath;
disp('ERT_MAC Target Path Setup Complete.');
