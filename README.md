# Sphere_Decoder-MLE-

Sphere Decoder (Maximum Likelihood Estimator) for decoding QAM constellations, run qam_sphere_decoder.m with all files under same directory. 

E.g:
If Blocksize = N, 

Modulation type is M-QAM, 

the equivalent channel is characterized by concatenation of three matrices R_{cp}*H0*T_{cp}, 

We have a received block noisy symbol vector sym_received, and transmitted symbol vector sym, then the decoding process is:

sym_estimated = qam_sphere_decoder(R_{cp}*H0*T_{cp},sym_received,M,sym,N); \\

Note that the transmitted symbol vector sym, is not used in the decoding process, only used to determine the radius of the sphere decoder based on the constellation in the function. 
