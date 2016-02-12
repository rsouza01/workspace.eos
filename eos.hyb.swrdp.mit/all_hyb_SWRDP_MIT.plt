#!/usr/bin/gnuplot
# Arquivo: eos.hyb.swrpd.mit.plt

reset

#Macros

set macro
hyb_eos='BJ+MIT'


# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set palette model RGB functions 0.4+gray/1.667, 0.75+gray/4.0, 0.4+gray/1.667

set output "./hyb_SWRDP_MIT.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key left box linestyle -1

set xrange[0:2000]
set yrange[0:400]

set title 'Eqs. de Estado, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "./SWRDP_0085.MIT.B_130.NUC.csv" using 1:2 with lines lt rgb "blue" title "SWRDP + MIT(B=130 MeV)"



#---------------------------------------------------------------------------------------------------
#PLOT 2 - TODAS EOS - pressure x epsilon
#---------------------------------------------------------------------------------------------------


#set output "../plots/MFT.QCD.epsilon_P.eps"

set key right bottom box linestyle -1

set yrange[0:2000]
set xrange[0:400]

unset xrange
unset yrange

set title 'Eqs. de Estado,  P {/Symbol \264} {/Symbol e}'
set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"
set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"

#set arrow from 120,0 to 120,500 nohead


plot "./SWRDP_0085.MIT.B_130.NUC.csv" using 2:1 with lines lt rgb "blue" title "SWRDP + MIT(B=130 MeV)"




#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

#set output "../plots/MFT.QCD.mu_P.eps"

set key top left box linestyle -1

unset xrange
unset yrange

set xrange[900:2000]
set yrange[0:2000]

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

plot "./SWRDP_0085.MIT.B_130.NUC.csv" using 3:2 with lines lt rgb "blue" title "SWRDP + MIT(B=130 MeV)"

