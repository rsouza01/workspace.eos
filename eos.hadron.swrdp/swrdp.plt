#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
#set terminal postscript eps enhanced font "cmr10"
set term post eps enhanced color font "Helvetica,15"
set lmargin 10
set grid

set output "swrdp.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key left box linestyle -1
unset key

set xrange[0:1700]
set yrange[0:750]

set title 'SWRDP, {/Symbol e} {/Symbol \264} P'
unset title 

set xlabel '{/Symbol e} [MeV fm^{-3}]' font ",20"
set ylabel 'Pressure [MeV fm^{-3}]' font ",20"
set tics font ", 17"

plot "eos_swrdp_l0040_L97a32.csv" using 1:2 with lines lt rgb "blue" title "l=40", \
    "eos_swrdp_l0049_L97a32.csv" using 1:2 with lines lt rgb "blue" title "l=49", \
    "eos_swrdp_l0059_L97a32.csv" using 1:2 with lines lt rgb "blue" title "l=59", \
    "eos_swrdp_l0071_L97a32.csv" using 1:2 with lines lt rgb "blue" title "l=71", \
    "eos_swrdp_l0085_L97a32.csv" using 1:2 with lines lt rgb "blue" title "l=85"



exit gnuplot

#---------------------------------------------------------------------------------------------------
#PLOT 2 - pressure x epsilon
#---------------------------------------------------------------------------------------------------


set key right bottom box linestyle -1

set yrange[0:2000]
set xrange[0:1000]

set title 'SWRDP, P {/Symbol \264} {/Symbol e}'
set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "eos_swrdp_l0040_L97a32.csv" using 2:1 with lines lt rgb "blue" title "l=40", \
    "eos_swrdp_l0049_L97a32.csv" using 2:1 with lines lt rgb "blue" title "l=49", \
    "eos_swrdp_l0059_L97a32.csv" using 2:1 with lines lt rgb "blue" title "l=59", \
    "eos_swrdp_l0071_L97a32.csv" using 2:1 with lines lt rgb "blue" title "l=71", \
    "eos_swrdp_l0085_L97a32.csv" using 2:1 with lines lt rgb "blue" title "l=85"

#---------------------------------------------------------------------------------------------------
#PLOT 3 - pressure x mu
#---------------------------------------------------------------------------------------------------


set key left top box linestyle -1

unset yrange
unset xrange

set yrange[0:1000]
set xrange[900:2000]

set title 'SWRDP, {/Symbol m} {/Symbol \264} P'
set xlabel '{/Symbol m} [MeV]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "eos_swrdp_l0040_L97a32.csv" using 4:2 with lines lt rgb "blue" title "l=40", \
    "eos_swrdp_l0049_L97a32.csv" using 4:2 with lines lt rgb "blue" title "l=49", \
    "eos_swrdp_l0059_L97a32.csv" using 4:2 with lines lt rgb "blue" title "l=59", \
    "eos_swrdp_l0071_L97a32.csv" using 4:2 with lines lt rgb "blue" title "l=71", \
    "eos_swrdp_l0085_L97a32.csv" using 4:2 with lines lt rgb "blue" title "l=85"
