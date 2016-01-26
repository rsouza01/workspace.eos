#!/usr/bin/gnuplot

reset

set xlabel 'epsilon' font "Helvetica,20"

set ylabel 'Pressure' font "Helvetica,20"

set xrange[0:3000]
#set yrange[0:]

#set log x
#set log y

set datafile separator ","

set key left box linestyle -1

set encoding iso
set terminal post eps enhanced mono
set output "Sly4_MFTQCD.eps"

set style fill pattern 7


set title 'MFT-QCD'

plot "../eos.quarks.mftqcd/MFT_QCD_B_100_XI_0_0015_FULL_NUC.csv" using 2:3 with lines lt rgb "blue" title "B100,XI=0.0015"
