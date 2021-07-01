#!/bin/bash

#decend into folder
for n in {1..18}
do
	cd ./Moden_inputs/Mode"$n"_inputs/
	#decend into subfolder
	for x in {-6..6}
	do
		cd ./$x/
		cp -r /home/tcstud10/Master_ADC_PropiolicAmine/normal_modes_calc/Moden/runADC.sh ./
		bash mk_ref_spec_jonas 13 0 40 eigen_vectors
		mkdir -p /home/tcstud10/Master_ADC_PropiolicAmine/normal_modes_calc/Moden/ref_specs/Mode"$n"
		cp ./ref_spec.ps /home/tcstud10/Master_ADC_PropiolicAmine/normal_modes_calc/Moden/ref_specs/Mode"$n"/Mode"$n"_spec"$x".png 
		#if test -f /home/tcstud10/Master_ADC_PropiolicAmine/normal_modes_calc/Moden/Moden_inputs/Mode"$n"_inputs/"$x"/eigen_vectors.1; then
   		# 	echo "ok"
		#else
		#	echo "Mode$n q=$x eigen_vector file does not exists."
		#fi
		cd ..
	done
cd ..
cd ..
done
