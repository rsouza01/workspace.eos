#!/usr/bin/gnuplot

reset

set macro

# Settings for all plots
# set datafile separator ","

set encoding iso
set term post eps enhanced font "Helvetica,15" fontfile "cmsy10.pfb"
set lmargin 10
set grid
set grid ytics lc rgb "#C0C0C0"

set key right box linestyle 1 opaque width 1

set style line 11 linecolor rgb "red"    lt 1 lw 1 pt 1 ps 0.30
set style line 21 linecolor rgb "orange" lt 2 lw 1 pt 1 ps 0.30
set style line 31 linecolor rgb "green"  lt 3 lw 1 pt 1 ps 0.30
set style line 41 linecolor rgb "blue"   lt 4 lw 1 pt 1 ps 0.30
set style line 51 linecolor rgb "violet" lt 5 lw 1 pt 1 ps 0.30


set output 'massaRaio_QCDIRE.eps'

set xlabel 'Radius (km)'
set ylabel 'Mass (M_{/CMSY10 \014})'

#set xrange[10:20]
#set yrange[0:2.3]

set title 'QCDIRE Mass radius diagram'

columns="3:4"
# type_curve="with lines"
type_curve=""

plot './RHOc-Pc-R-M-H-D-C.csv' using @columns @type_curve ls 11 title 'QCDIRE'
