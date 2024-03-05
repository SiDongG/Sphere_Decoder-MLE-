# Sphere_Decoder-MLE-

64 bit Mexw file, only runs on 64-bit Windows system 

Sphere Decoder (Maximum Likelihood Estimator) for decoding QAM constellations, run qam_sphere_decoder.m with all files under same directory. 

E.g:
If Blocksize = N, 

Modulation type is M-QAM, 

the equivalent channel is characterized by concatenation of three matrices R*H*T, 

We have a received block noisy symbol vector sym_received, and transmitted symbol vector sym, then the decoding process is:

sym_estimated = qam_sphere_decoder(R*H*T,sym_received,M,sym,N); \\

Note that the transmitted symbol vector sym, is not used in the decoding process, only used to determine the radius of the sphere decoder based on the constellation in the function. 
