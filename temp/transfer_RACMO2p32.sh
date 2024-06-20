#/bin/sh


varlist=(evap ff10m precip sndiv snowfall snowmelt tskin)
#decadelist=(1939 1941 1951 1961 1971 1981 1991 2001 2011 2021)
decadelist=(1961 1971 1981 1991 2001 2011)

for d in ${decadelist[@]}; do
	for var in ${varlist[@]}; do
		#echo ${var}.KNMI-${d}
		rsync -avz --partial --append-verify /Volumes/imau01/rapid/RACMO2.3p2/FGRN055_1940/3-hourly/${var}.KNMI-${d}*.nc hpc-login:/ec/res4/scratch/nld4814/RACMO23p2_GR/raw/historical/decadal/
	done
done
# for just 2023
# for var in ${varlist}; do
	# rsync -avz --partial --append-verify /Volumes/imau01/rapid/RACMO2.3p2/FGRN055_1940/3-hourly/NC_FDM-3h/${var}.KNMI-2023*.nc hpc-login:/ec/res4/scratch/nld4814/RACMO23p2_GR/raw/FGRN055/yearly/
# done