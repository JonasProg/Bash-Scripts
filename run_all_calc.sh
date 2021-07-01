#!/bin/bash
#decend into folder
for n in {4..18}
do
	cd ./Moden_inputs/Mode"$n"_inputs/
		#decend into subfolder
		for x in {0..6}
		do
			cd ./"$x"/
			# Make Scripts executable
			chmod +x scf_adc.in
			chmod +x runADC.sh
			chmod +x theADCcodeHITCHCOCK2.exe
			chmod +x mk_ref_spec_jonas
			#submit job
			sbatch runADC.sh
			cd ..
		done
		for x in {-6..-1}
		do
			cd ./"$x"/
			# Make Scripts executable
			chmod +x scf_adc.in
			chmod +x runADC.sh
			chmod +x theADCcodeHITCHCOCK2.exe
			chmod +x mk_ref_spec_jonas
			#submit job
			sbatch runADC.sh
			cd ..
		done
	cd ..
	cd ..
done
