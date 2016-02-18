#!/usr/bin/awk -f

# Column 1: Energy density (w/ magnetic fields and pressure anysotropy).
# Column 2: Perpendicular pressure (w/ magnetic fields and pressure anysotropy).
# Column 3: Parallel pressure (w/ magnetic fields and pressure anysotropy).
# Column 4: Energy density [MeV/fm^3].
# Column 5: Pressure [MeV/fm^3].
# Column 6: Baryon density [fm^-3].
# Column 7: Strangeness fraction.
# Column 8: Baryon chemical potential [MeV].
#
#
# OUTPUT FORMAT
# energy density [MeV/fm3], pressure [MeV/fm3], baryon density [1/fm3], chemical potential [MeV]
#


BEGIN {
    print "# energy density [MeV fm-3], pressure [MeV fm-3], baryon density [1/fm-3], chemical potential [MeV], strangeness fraction [admin]"

} { 

    if($1!~/^#/){
	
	energy_density = $4
	pressure = $5
	baryon_density = $6
	chem_pot = $8
	strangeness_fraction = $7

	printf "%.6f, %.6f, %.6f, %.6f, %.6f\n", energy_density, pressure, baryon_density, chem_pot, strangeness_fraction

  }

  
} END { 

        print "# energy density [MeV fm-3], pressure [MeV fm-3], baryon density [1/fm-3], chemical potential [MeV], strangeness fraction [admin]"

} 
