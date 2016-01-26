#!/usr/bin/awk -f

#
# Input:
# Column 1: Baryon number density [fm-3]
# Column 2: Energy Density [g cm-3]
# Column 3: Pressure [g cm-3]
#
# OUTPUT FORMAT
# energy density [MeV/fm3], pressure [MeV/fm3], baryon density [1/fm3], chemical potential [MeV]
#
# chemical potential = (energy density + pressure)/n_B = ($2 + $3)/$1
#

BEGIN { 
	# CONSTANTS
	LIGHT_SPEED_CGS     = 2.998E+010
	ERG_TO_MEV          = 6.241507e5
	CM3_TO_FM3          = 1e39
	CONV_ENERGY_CGS2NUC = ERG_TO_MEV/CM3_TO_FM3

        outputHeader = "# energy density [MeV fm-3], pressure [MeV fm-3], baryon density [1/fm-3], chemical potential [MeV]"

	# Commands
        outputFooter = outputHeader
        print outputHeader
} { 
  
  # This snippet checks wheter the line starts with a comment character
  if($1!~/^#/){
    energy_density = $2*LIGHT_SPEED_CGS^2*CONV_ENERGY_CGS2NUC
    pressure = $3*CONV_ENERGY_CGS2NUC
    baryon_density = $1
    chem_pot = (energy_density+pressure)

   # printf "%.6e, %.6e, %.6e, %.6f\n", energy_density, pressure, baryon_density, (energy_density+pressure)/$1
    printf "%.6f, %.6f, %.6f, %.6f\n", energy_density, pressure, baryon_density, (energy_density+pressure)/$1
  }
} END { 

        print outputFooter

}

