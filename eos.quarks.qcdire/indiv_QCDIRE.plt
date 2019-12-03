#!/usr/bin/gnuplot

reset

set macro

# Settings for all plots
set datafile separator ","

set encoding iso
set term post eps enhanced font "Helvetica,10"
set lmargin 10
set grid
set grid ytics lc rgb "#C0C0C0"


#---------------------------------------------------------------------------------------------------
set style data lines

set style line 10 linecolor rgb "red"    lt 1 lw 3 pt 3 ps 0.5
set style line 11 linecolor rgb "red"    lt 2 lw 3 pt 3 ps 0.5
set style line 12 linecolor rgb "red"    lt 3 lw 3 pt 3 ps 0.5
set style line 13 linecolor rgb "red"    lt 4 lw 3 pt 3 ps 0.5
set style line 14 linecolor rgb "red"    lt 5 lw 3 pt 3 ps 0.5

set style line 21 linecolor rgb "orange" lt 1 lw 3 pt 3 ps 0.5
set style line 22 linecolor rgb "orange" lt 2 lw 3 pt 3 ps 0.5
set style line 23 linecolor rgb "orange" lt 3 lw 3 pt 3 ps 0.5
set style line 24 linecolor rgb "orange" lt 4 lw 3 pt 3 ps 0.5
set style line 25 linecolor rgb "orange" lt 5 lw 3 pt 3 ps 0.5
set style line 26 linecolor rgb "orange" lt 6 lw 3 pt 3 ps 0.5
set style line 27 linecolor rgb "orange" lt 7 lw 3 pt 3 ps 0.5
set style line 28 linecolor rgb "orange" lt 8 lw 3 pt 3 ps 0.5
set style line 29 linecolor rgb "orange" lt 9 lw 3 pt 3 ps 0.5


set style line 3 linecolor rgb "green"  lt 3 lw 3 pt 3 ps 0.5
set style line 4 linecolor rgb "blue"   lt 4 lw 3 pt 3 ps 0.5
set style line 5 linecolor rgb "violet" lt 5 lw 3 pt 3 ps 0.5

#set output "./MFTQCD.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set output "./eos_QCDIRE.eps"

set key left box linestyle -1

set xrange[0:1500]
set yrange[0:200]

set title 'QCDIRE, {/Symbol e} {/Symbol \264} P' font ",14"
set xlabel '{/Symbol e} [MeV fm^{-3}]' font ",14"
set ylabel 'Pressure [MeV fm^{-3}]' font ",14"

columns="1:2"
#l_style="ls 1"
l_style=""
#energy, pressure, density, mu
plot "qcd.ire.eos.uds_2.NUC.csv" using @columns ls 10 title "", \
