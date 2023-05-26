

addpath '/Users/dennislambert/Documents/MathWorks/MATLAB Add-Ons/Collections/fieldtrip-20230328';
ft_defaults

%%
cfg             = [];
cfg.dataset     = '/Users/dennislambert/Library/CloudStorage/Box-Box/PainTMS/Patient_Data/EEG/TMS_EEG Pilot Data/Test_Ryan2.eeg';
cfg.demean      = 'yes';
cfg.hpfreq      = 0.5;

    [data] = ft_preprocessing(cfg);

%%   w/ EEG imported--> visualize time-series in FieldTrip
cfg = [];
artf = ft_databrowser(cfg, data);

%% mark artifacts
% select only the EEG channels
%cfg = [];
%cfg.channel = 'EEG';
%data = ft_preprocessing(cfg, data_all);

% open the browser and page through the trials
%cfg = [];
%artf = ft_databrowser(cfg, data);

%cfg = [];
%cfg.continuous  = 'yes';
%cfg.method      = 'detect';
%cfg.dataset     = '/Users/dennislambert/Library/CloudStorage/Box-Box/PainTMS/Patient_Data/EEG/TMS_EEG Pilot Data/Test_Ryan2.eeg';
%[cfg, artifact] = ft_artifact_tms(cfg);


