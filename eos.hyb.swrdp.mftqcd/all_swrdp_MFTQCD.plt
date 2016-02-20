#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set output "./swrdp_MFTQCD.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------


#set output "../plots/MFT.QCD.epsilon_P.eps"

set key left box linestyle -1

set xrange[0:2000]
set yrange[0:800]

set title 'Eqs. de Estado, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

columns="1:2"

plot "../eos.hadron.swrdp/eos_swrdp_l0040_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 40", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00100.csv" using @columns with lines lt rgb "blue" title "B=90 MeV, {/Symbol x}=0.00100", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00090.csv" using @columns with lines lt rgb "medium-blue" title "B=90 MeV, {/Symbol x}=0.00090", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00070.csv" using @columns with lines lt rgb "skyblue" title "B=90 MeV, {/Symbol x}=0.00070", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00050.csv" using @columns with lines lt rgb "cyan" title "B=90 MeV, {/Symbol x}=0.00050", \

     #"../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 49", \
     #"../eos.hadron.swrdp/eos_swrdp_l0059_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 59", \
     #"../eos.hadron.swrdp/eos_swrdp_l0071_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 71", \
     #"../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 85", \



#---------------------------------------------------------------------------------------------------
#PLOT 2 - TODAS EOS - pressure x epsilon
#---------------------------------------------------------------------------------------------------


#set output "../plots/MFT.QCD.epsilon_P.eps"

set key right bottom box linestyle -1

set yrange[0:2000]
set xrange[0:800]

set title 'Eqs. de Estado,  P {/Symbol \264} {/Symbol e}'
set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"
set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"

#set arrow from 120,0 to 120,500 nohead

columns="2:1"

plot "../eos.hadron.swrdp/eos_swrdp_l0040_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 40", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00100.csv" using @columns with lines lt rgb "blue" title "B=90 MeV, {/Symbol x}=0.00100", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00090.csv" using @columns with lines lt rgb "medium-blue" title "B=90 MeV, {/Symbol x}=0.00090", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00070.csv" using @columns with lines lt rgb "skyblue" title "B=90 MeV, {/Symbol x}=0.00070", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00050.csv" using @columns with lines lt rgb "cyan" title "B=90 MeV, {/Symbol x}=0.00050", \



#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

#set output "../plots/MFT.QCD.mu_P.eps"

set key top left box linestyle -1

unset xrange
unset yrange

set xrange[1190:1500]
set yrange[40:250]
#set ytics 100
#set xtics 250
set grid

set xlabel '{/Symbol m} [MeV]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

set title 'Eqs. de Estado, {/Symbol m} {/Symbol \264} P'

#set label 1 at   500, 1000 '{/Symbol x}=0.0015' font "cmr10,15"
#set label 2 at  1500, 2000 '{/Symbol x}=0.0030' font "cmr10,15"
#set label 3 at  2500, 3600 '{/Symbol x}=0.0045' font "cmr10,15"
#set label 4 at  3000, 3300 '{/Symbol x}=0.0060' font "cmr10,15"
#set label 5 at  3000, 2150 '{/Symbol x}=0.0075' font "cmr10,15"
# set arrow from 3000,2000 to 2950,2150 nohead


columns="4:2"

plot "../eos.hadron.swrdp/eos_swrdp_l0040_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 40", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00100.csv" using @columns with lines lt rgb "blue" title "B=90 MeV, {/Symbol x}=0.00100", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00090.csv" using @columns with lines lt rgb "medium-blue" title "B=90 MeV, {/Symbol x}=0.00090", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00070.csv" using @columns with lines lt rgb "skyblue" title "B=90 MeV, {/Symbol x}=0.00070", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00050.csv" using @columns with lines lt rgb "cyan" title "B=90 MeV, {/Symbol x}=0.00050", \



#---------------------------------------------------------------------------------------------------
#PLOT 4 - TODAS EOS - n x epsilon
#---------------------------------------------------------------------------------------------------

reset

set xrange[0:3000]
#set yrange[0:2500]

#set output "../plots/MFT.QCD.n_epsilon.eps"

set key left center box linestyle -1

set title 'Eqs. de Estado, {/Symbol m} {/Symbol \264} n'

set ylabel 'n [fm^{-3}]' font "cmr10,15"
set xlabel '{/Symbol m} [MeV]' font "cmr10,15"

set xtics 250
#set ytics 300

set ytics add ("{/Symbol r}_0" 0.16)
set ytics add ("3{/Symbol r}_0" 0.48)
set ytics add ("10{/Symbol r}_0" 1.6)

columns="4:3"

plot 0.16 with lines lt rgb "#660000" title "n_0", \
     0.48 with lines lt rgb "#660000" title "3 n_0", \
     1.6 with lines lt rgb "#660000" title "10 n_0", \
     "../eos.hadron.swrdp/eos_swrdp_l0040_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 40", \
     "../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 49", \
     "../eos.hadron.swrdp/eos_swrdp_l0059_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 59", \
     "../eos.hadron.swrdp/eos_swrdp_l0071_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 71", \
     "../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using @columns with lines lt rgb "dark-gray" title "SWRDP 85", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00100.csv" using @columns with lines lt rgb "blue" title "B=90 MeV, {/Symbol x}=0.00100", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00090.csv" using @columns with lines lt rgb "medium-blue" title "B=90 MeV, {/Symbol x}=0.00090", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00070.csv" using @columns with lines lt rgb "skyblue" title "B=90 MeV, {/Symbol x}=0.00070", \
     "../eos.quarks.mftqcd/mftqcd_90_0_00050.csv" using @columns with lines lt rgb "cyan" title "B=90 MeV, {/Symbol x}=0.00050", \
