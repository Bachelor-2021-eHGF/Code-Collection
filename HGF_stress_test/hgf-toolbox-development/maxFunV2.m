% track = [];

% track.n_NaN = [track2904.track.n_NaN; track11616.n_NaN];
% track.LME = [track2904.track.LME; track11616.LME];
% track.omega2 = [track2904.track.omega2; track11616.omega2];
% track.omega3 = [track2904.track.omega3; track11616.omega3];
% track.ze = [track2904.track.ze; track11616.ze];
% track.parameters = [track2904.track.parameters; track11616.parameters];


% spm_BMS(track.LME(:,3:5))

%%% HGF %%%
NaN_HGF = find(track.n_NaN(:,1) > 0);
% LME_HGF = track.LME;
% LME_HGF(NaN_HGF,:) = [];
% LME_HGF(:,2) = [];
% spm_BMS(LME_HGF)

%%% eHGF %%%
% NaN_eHGF = find(track.n_NaN(:,2) > 0);
% LME_eHGF = track.LME;
% LME_eHGF(NaN_eHGF,:) = [];
% LME_eHGF(:,1) = [];
% spm_BMS(LME_eHGF)

%%% both %%%
LME_both = track.LME;
NaN_track = track.n_NaN;

LME_both(NaN_HGF,:) = [];
NaN_track(NaN_HGF,:) = [];

NaN_both = find(NaN_track(:,2) > 0);

LME_both(NaN_both,:) = [];
NaN_track(NaN_both,:) = [];

spm_BMS(LME_both)


