
orig_folder=pwd;
cd ('~/bart-master')
bartsetup;
cd(orig_folder)
addpath(genpath('/home/uemir/siemensread'));
% image=mapVBVD('/scratch/bell/uemir/meas_MID00357_FID29720_fid_rosette_super_hr_2D_x2_left.dat')
kspreadcfl('/scratch/bell/uemir/data_occ_357_fmri_right_2ndecho');

ccc=bart('avg -w 1024',ksp);

uzay=readcfl('weight_2nd_echo_fmri');
size(ccc)
writecfl('mean_kspace',ccc);
w2=reshape(uzay,1,1*408*189);
size(w2)
for iii=1:10
    ccc_temp=ccc(:,:,:,iii);
    
    ccc_new(:,:,:,iii)=reshape(ccc_temp(:).*w2',1,408,189,1);
end


lowres_img = bart('nufft -i -d30:30:1 -t', traj_rad2, ccc);
lowres_ksp = bart('fft -u 7', lowres_img);
ksp_zerop = bart('resize -c 0 512 1 512 2 1', lowres_ksp);
sens = bart('ecalib -t 0.001 -m1', ksp_zerop);
igrid = bart('nufft -a -d512:512:1 -t', traj_rad2, ccc_new);

recon_avg=sum(conj(sens).*igrid,4)./1;


recon=bart('pics -d5 -i30 -R T:1024:0:0.8 -t',traj_rad2,ksp,sens);


save('/scratch/bell/uemir/recon_2_occ_2nd2_transverse','recon','recon_avg');