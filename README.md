# Submillimeter fMRI Acquisition using a dual-echo Rosette kspace trajectory at 3T#
*Submillimeter fMRI Acquisition using a dual-echo Rosette kspace trajectory at 3T*



![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/flower-petals-element-vector-set-red-rose_53876-126295.jpg?raw=true)


We are exploring the utility of the novel 3D dual-echo Rosette kspace MRI for an high-resolution fMRI application. 


# 7T, Siemens Terra Scanner 1s, 95 petals, 1 petal = 11ms Regridding
![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/terra fmri_data.png?raw=true)

Resolution insert Measurements: The hole diameter differs between the array pairs: for the left pair it is 1.1 mm, for the center pair it is 1.0 mm, and for the right pair it is 0.9 mm. 

# Reduced FOV 1st echo echo acquisition time 1s, 95 petals, 1 petal = 11ms Regridding
![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/reducedfov.png?raw=true)



# 2nd echo acquisition time 1s, 95 petals, 1 petal = 11ms Regridding
![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/resolution_fmri.png?raw=true)

# 1st echo acquisition time 1s, 95 petals, 1 petal = 11ms Compressed Sensing
![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/resolution_fmri_1st_Echo.png?raw=true)

First Echo and 2nd Echo with x6 accelaration TR=1300ms 


![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/first_2ndechoes_x6accelaration.jpg?raw=true)

Subtracion

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/subtraction.jpg?raw=true)

First Echo - 2nd Echo 


![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/Untitled.png?raw=true)


![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/SWI2.gif?raw=true)


**RAW DATA**

Raw data can be downloadable from the following link. 


https://purr.purdue.edu/projects/datasharing4roset/files



Gianna Nossa<sup>1</sup>, Humberto Monsivais<sup>1</sup>, Seokkyoon Hong<sup>2</sup>, Taewoong Park<sup>2</sup>, Fethi Sila Erdil<sup>1</sup>, Xin Shen<sup>3</sup>, Ali Caglar Özen<sup>4</sup>, Serhat Ilbey<sup>4</sup>, Mark Chiew<sup>5</sup>, Cecilia Steinwurzel<sup>6</sup>, Zoe Kourtzi<sup>6</sup>, Yen-Yu Ian Shih<sup>7</sup>, Uzay Emir<sup>1,2</sup> 

<sup>1</sup>School of Health Sciences, Purdue University, West Lafayette, IN, United States;  

<sup>2</sup>Weldon School of Biomedical Engineering, Purdue University, West Lafayette, IN, United States; 

<sup>3</sup>Radiology and Biomedical Imaging, University of California San Francisco, San Francisco, CA, United States; 

<sup>4</sup>Department of radiology, Medical Physics, Medical Center-University of Freiburg, Freiburg, Germany; 
<sup>5</sup>University of Toronto; 

<sup>6</sup>Department of Psychology, University of Cambridge;

<sup>7</sup>Biomedical Research Imaging Center, University of North Carolina Chapel Hill, Chapel Hill, NC, United States 

**Synopsis**

In this study, we overcome the technological barrier against acquiring submillimeter resolution (~ 0.5 mm) fMRI data at 3T via a novel dual-echo Rosette k-space design. This design results in the fine representation of activation maps in two different functional tasks and might be a springboard in neuroimaging by providing very high-resolution spatiotemporal dynamics of neural networks. The method will be further evolved with the feedback from the MRI community via the GitHub platform as such for further acceleration, inflow saturation, and 3D coverage via 3D sampling and/or multiband approaches. 

**Introduction** 

Understanding neurological associations have been a challenge in neuroscience, especially the visual pathway. Non-invasive access to functional data through fMRI provides information on the changes in cerebral blood flow and oxygenation in response to stimuli.  For a more fine-grained assessment, laminar fMRI measures responses specific to separate cortical layers [1]. Current techniques utilize gradient-recalled echo for functional mapping contrast and image encoding through Echo Planar Imaging [2]. While ultrahigh field strengths (≥7T) generally outperform lower field strengths (3T), the submillimeter resolution is a challenge for high and ultra-high field strengths [3]. We recently demonstrated a novel Rosette k-space design providing improved PSF and SNR compared to radial acquisition and a smooth transition (zero-delay) between the two echoes of dual-echo acquisition [4]. It also offers the potential for further acceleration using higher under-sampling factors and compressed sensing (CS) techniques for reconstruction. In this study, we developed a novel very short TE (VSE) dual-echo Rosette fMRI sequence to capture the submillimeter fMRI signal and compared it against the conventional MB-EPI sequence at 3T. 

**K-SPACE**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/mrm29451-fig-0001-m.jpg?raw=true)

**PSF**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/mrm29451-fig-0003-m.png?raw=true)

**SNR**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/mrm29451-fig-0005-m.png?raw=true)

**Methods**

The study was approved by the Institutional Review Boards (IRBs) of Purdue University and informed consent was obtained. Two healthy volunteers (M, 40, and 29 years old) underwent brain scans with a whole-body 3T MRI system (Siemens Healthineers, Erlangen, Germany). A vendor-supplied 64-channel receiver head coil was used. For conventional fMRI protocols, we used the 2D CMRR MB-EPI sequence with a multiband acceleration factor of 8, TR = 1.05 s, TE= 46 ms, Slice Thickness = 2 mm, flip angle= 52, number of slices = 72, and nominal in-plane resolution = 1.468 mm. For the novel dual-echo 2D Rosette fMRI sequence, the following acquisition parameters were used: TR = 2.4 s, dual-TEs= 1 and 9 ms, slice thickness = 2, flip angle = 7, number of slices = 1, number of petals with an acceleration factor 4 =189, nominal in-plane resolution = 0.468 mm [4]. Rosette fMRI data were reconstructed with ESPIRiT-based parallel imaging and compressed sensing: l1-wavelets in space and total variation in time using the BART tool (https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-) [4]. Two reconstruction resolutions were defined, 0.468 and 0.936 with a final matrix of 512 x 512. Two functional activation paradigms used in this comparison study were an 8-Hz flickering checkerboard and finger tapping for periods of 30 and 15 sec on/off, respectively. FMRI data processing was carried out using FEAT (FMRI Expert Analysis Tool) Version 6.00, part of FSL. Z (Gaussianised T/F) statistic images were thresholded using clusters determined by Z>3.1 and a (corrected) cluster significance threshold of P=0.05 [5].


**Results** 

We demonstrated that the novel dual-echo sequence captures similar activation maps in the occipital and motor cortices in response to functional tasks compared to the conventional MB-EPI sequence (Figures 1 and 2). Additionally, the signal loss in the frontal cortex of MB-EPI is recovered using the VSE dual-echo Rosette, including the eyes (Figure 3).

**Figure 1**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/rosette_ismrm.png?raw=true)

**Figure 2**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/ismrm_figure2.png?raw=true)

**Figure 3**

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/ismrm_figure3.png?raw=true)

**Discussion and Conclusion** 

In this study, we demonstrated a novel VSE dual-echo Rosette fMRI sequence and compared it against the MB-EPI sequence. Findings indicate that the novel sequence is capable of detecting functional signals from a submillimeter resolution (~ 0.5 mm in-plane resolution) using clinically and widely available 3T scanners. The improvements to accelerate the acquisition and increase the 3D coverage will be presented and discussed. The novel VSE dual-echo Rosette fMRI sequence might be a springboard in neuroimaging by providing a very high-resolution spatiotemporal dynamics of neural networks.


**References**

**[1].** Lawrence SJ, Formisano E, Muckli L, de Lange, FP.  Laminar fMRI: Applications for cognitive neuroscience. Neuroimage. 2019;197,785-791.

**[2].** Ugurbil K. What is feasible with imaging human brain function and connectivity using functional magnetic resonance imaging. Philos Trans R Soc B Biol Sci. 2016;371(1705). doi:10.1098/RSTB.2015.0361

**[3].** Toi PT, Jang HJ, Min K, et al. In vivo direct imaging of neuronal activity at high temporospatial resolution. Science (80- ). 2022;378(6616):160-168. doi:10.1126/SCIENCE.ABH4340

**[4].** Shen X, Özen AC, Sunjar A, et al. Ultra-short T2 components imaging of the whole brain using 3D dual-echo UTE MRI with rosette k-space pattern. Magn Reson Med. Published online September 25, 2022. doi:10.1002/MRM.29451

**[5].** Worsley KJ. Testing for signals with unknown location and scale in a χ2 random field, with an application to fMRI. Adv Appl Probab. 2001;33(4):773-793. doi:10.1239/AAP/1011994029


**RAW DATA**

Raw data can be downloadable from the following link. 


https://purr.purdue.edu/projects/datasharing4roset/files

![alt text](https://github.com/uzayemir/high-resolution-dual-echo-rosette-fmri-/blob/main/SWI2.gif?raw=true)




