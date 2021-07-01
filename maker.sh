#!/bin/bash
for x in {1..18}
do
	sed -i -e "s/along = 1 6/along = $x 6/g" /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/propynamide_g09.inp
	vcpnt85 propynamide_g09.inp 
	mkdir -p /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/Mode"$x"_inputs
	mv ./propynamide_Mode_"$x"* /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/Mode"$x"_inputs
	mv ./go.com /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/Mode"$x"_inputs
	rm -rf /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/go.com
        sed -i -e "s/along = $x 6/along = 1 6/g" /home/tcstud10/Master_ADC_PropiolicAmine/coupledcluster_gs_points/1_VCPNT/propynamide_g09.inp
done
