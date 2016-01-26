#!/bin/bash

echo '#########################################' > bps.NUC.csv
echo '# BPS EoS' >> bps.NUC.csv
echo '#########################################' >> bps.NUC.csv
./convert.awk bps.CGS.csv >> bps.NUC.csv

echo '#########################################' > harrison.wheeler.low.density.NUC.csv
echo '# BPS EoS' >> harrison.wheeler.low.density.NUC.csv
echo '#########################################' >> harrison.wheeler.low.density.NUC.csv
./convert.awk harrison.wheeler.low.density.CGS.csv >> harrison.wheeler.low.density.NUC.csv

echo '#########################################' > high_density_k_210.NUC.csv
echo '# High Density EoS' >> high_density_k_210.NUC.csv
echo '#########################################' >> high_density_k_210.NUC.csv
./convert.awk high_density_k_210.CGS.csv >> high_density_k_210.NUC.csv 
