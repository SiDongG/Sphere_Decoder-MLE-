function [symb_est] = qam_sphere_decoder(H,y,M,s,N)
%% Sphere Decoder for QAM Constellation 
% symb_est: properly ordered estimates (both in-phase and quadrature parts)
% H: Channel matrix
% y: Received symbols
% M: QAM constellation size 
% s: transmitted symbols
% N: Block size
% Expects integer values for Real and Complex parts of the symbols

Lpam = sqrt(M);
RH = [real(H), -imag(H);imag(H), real(H)];
[Q,R] = qr(RH,0);
Ry = [real(y); imag(y)];
yn = Q'*Ry;

radi = sum((yn - (R*[real(s); imag(s)])).^2); %This estimate of radius is from the derivation of sphere decoder(see thesis)
[x_dec,~,info] = sphere_decoder_pam_lsd(yn,R,Lpam,radi,1);

if (isempty(x_dec))
    x_dec = [real(s);imag(s)];
end

symb_est = x_dec(1:N) + x_dec(N+1:end)*1i;

% constellation = [-1+1i; 1+1i; 1-1i; -1-1i];
% bitmap = [0 1; 1 1; 1 0; 0 0];
% sdobj = comm.SphereDecoder(constellation,bitmap);
% symb_est = step(sdobj, y.', H);



end