#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set output "swrdp.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key left box linestyle -1

#set xrange[0:2000]
#set yrange[0:1000]

set title 'SWRDP, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "eos_swrdp_l0085_L97a32.LESS.CGS.csv" using 1:2 with lines lt rgb "blue" title "l=85"

#---------------------------------------------------------------------------------------------------
#PLOT 2 - pressure x epsilon
#---------------------------------------------------------------------------------------------------


set key right bottom box linestyle -1

#set yrange[0:2000]
#set xrange[0:1000]

 set title 'SWRDP, P {/Symbol \264} {/Symbol e}'
 set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
 set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

 plot "eos_swrdp_l0085_L97a32.LESS.CGS.csv" using 2:1 with lines lt rgb "blue" title "l=85"

