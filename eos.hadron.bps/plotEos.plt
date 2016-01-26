#!/usr/bin/gnuplot

reset

set xlabel 'epsilon' font "Helvetica,20"

set ylabel 'Pressure' font "Helvetica,20"

#set xrange[0:3000]
#set yrange[0:]

#set log x
#set log y

set datafile separator ","

set key left box linestyle -1

set encoding iso
set terminal post eps enhanced mono
set output "eos.eps"

set style fill pattern 7


set title 'MFT-QCD'

plot "./hw_high_density.NUC.csv" using 1:2 with lines lt rgb "blue" title "HW/High Density", \
    "./bps_high_density.NUC.csv" using 1:2 with lines lt rgb "red" title "BPS/High Density"
