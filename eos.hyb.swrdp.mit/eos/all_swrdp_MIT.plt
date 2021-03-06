#!/usr/bin/gnuplot
# Arquivo: eos.hyb.swrpd.mit.plt


set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
#set terminal postscript eps enhanced font "cmr10"

set terminal postscript eps enhanced font "Gill Sans,9" linewidth 2 rounded fontscale 1.0

# Line style for axes
set style line 80 lt 1 linecolor rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

# Line style for key
set style line 82 lt 1 linecolor rgb "black" linewidth 0


set grid back linestyle 81

set border 3 back linestyle 80

set lmargin 10
set grid

set palette model RGB functions 0.4+gray/1.667, 0.75+gray/4.0, 0.4+gray/1.667

set output "./swrdp_MIT.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key width 1 height 1 left box linestyle 82

set xrange[0:2000]
set yrange[0:800]

set title 'Eqs. de Estado, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using 1:2 with lines lt rgb "blue" title "SWRDP l=85", \
     "../eos.quarks.mit/mit_bag_model_B_110.csv" using 1:2 with lines lt rgb "red" title "B=110 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_130.csv" using 1:2 with lines lt rgb "red" title "B=130 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_150.csv" using 1:2 with lines lt rgb "red" title "B=150 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_170.csv" using 1:2 with lines lt rgb "red" title "B=170 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_190.csv" using 1:2 with lines lt rgb "red" title "B=190 MeV"

#---------------------------------------------------------------------------------------------------
#PLOT 2 - TODAS EOS - pressure x epsilon
#---------------------------------------------------------------------------------------------------


#set output "../plots/MFT.QCD.epsilon_P.eps"

set key right bottom box linestyle 82

set yrange[0:2000]
set xrange[0:800]

unset xrange
unset yrange

set title 'Eqs. de Estado,  P {/Symbol \264} {/Symbol e}'
set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"
set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"

#set arrow from 120,0 to 120,500 nohead


plot "../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using 2:1 with lines lt rgb "blue" title "SWRDP l=85", \
     "../eos.quarks.mit/mit_bag_model_B_110.csv" using 2:1 with lines lt rgb "red" title "B=110 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_130.csv" using 2:1 with lines lt rgb "red" title "B=130 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_150.csv" using 2:1 with lines lt rgb "red" title "B=150 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_170.csv" using 2:1 with lines lt rgb "red" title "B=170 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_190.csv" using 2:1 with lines lt rgb "red" title "B=190 MeV"


#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

#set output "../plots/MFT.QCD.mu_P.eps"

set key top left box linestyle 82

unset xrange
unset yrange

set xrange[900:1300]
set yrange[0:150]

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

plot "../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using 4:2 with lines lt rgb "blue" title "SWRDP l=85", \
     "../eos.quarks.mit/mit_bag_model_B_110.csv" using 4:2 with lines lt rgb "red" title "B=110 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_130.csv" using 4:2 with lines lt rgb "red" title "B=130 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_150.csv" using 4:2 with lines lt rgb "red" title "B=150 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_170.csv" using 4:2 with lines lt rgb "red" title "B=170 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_190.csv" using 4:2 with lines lt rgb "red" title "B=190 MeV"

#---------------------------------------------------------------------------------------------------
#PLOT 4 - TODAS EOS - n x epsilon
#---------------------------------------------------------------------------------------------------

# reset

#set xrange[0:10]
set yrange[0:2]

#set output "../plots/MFT.QCD.n_epsilon.eps"

set key left center box linestyle 82

set title 'Eqs. de Estado, {/Symbol m} {/Symbol \264} n'

set ylabel 'n [fm^{-3}]' font "cmr10,15"
set xlabel '{/Symbol m} [MeV]' font "cmr10,15"

set xtics 250
#set ytics 300

set ytics add ("{/Symbol r}_0" 0.16)
set ytics add ("3{/Symbol r}_0" 0.48)
set ytics add ("10{/Symbol r}_0" 1.6)


plot "../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv" using 4:3 with lines lt rgb "blue" title "SWRDP l=85", \
    0.16 with lines lt rgb "#660000" title "n_0", \
    0.48 with lines lt rgb "#660000" title "5 n_0", \
    1.6 with lines lt rgb "#660000" title "10 n_0", \
     "../eos.quarks.mit/mit_bag_model_B_110.csv" using 4:3 with lines lt rgb "red" title "B=110 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_130.csv" using 4:3 with lines lt rgb "red" title "B=130 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_150.csv" using 4:3 with lines lt rgb "red" title "B=150 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_170.csv" using 4:3 with lines lt rgb "red" title "B=170 MeV", \
     "../eos.quarks.mit/mit_bag_model_B_190.csv" using 4:3 with lines lt rgb "red" title "B=190 MeV"
