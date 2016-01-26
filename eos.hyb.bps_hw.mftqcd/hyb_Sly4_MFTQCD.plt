#!/usr/bin/gnuplot


reset

set xlabel 'Pressure' font "Helvetica,20"

set ylabel 'Energy' font "Helvetica,20"

#set xrange[1:12000]
#set yrange[1e-5:3]

set xrange[0:2e35]

#set log x
#set log y

set encoding iso
set terminal post eps enhanced mono
set output 'Sly4_MFT.QCD.eps' 

set style fill pattern 7


set title 'Energy/Pressure'

plot './Sly4_MFT.QCD.csv' using 2:1  with lines title 'Energy/Pressure'
