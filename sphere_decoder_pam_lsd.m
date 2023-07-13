function [ s_hats, metrics, info ] = sphere_decoder_pam_lsd( y, R, pam_size, radius, N_cands )
%SPHERE_DECODER_PAM_LSD Summary of this function goes here
%   Detailed explanation goes here

%H is stacked version where H = [Re(H) Im(H);-Im(H) Re(H)]
%all vectors are stacked in the form x = [Re(x); Im(x)] where x is a column
%vector

y_new = y - sum(R, 2);

[s_hats, metrics, info] = sphere_decoder_pam_lsd_c(y_new, 2 * R, pam_size, radius, N_cands);
s_hats = s_hats * 2 + 1;

end