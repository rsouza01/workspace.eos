#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set style data lines

set style line 10 linecolor rgb "red"    lt 1 lw 2 pt 3 ps 0.5
set style line 11 linecolor rgb "red"    lt 2 lw 2 pt 3 ps 0.5
set style line 12 linecolor rgb "red"    lt 3 lw 2 pt 3 ps 0.5
set style line 13 linecolor rgb "red"    lt 4 lw 2 pt 3 ps 0.5
set style line 14 linecolor rgb "red"    lt 5 lw 2 pt 3 ps 0.5

set style line 21 linecolor rgb "orange" lt 1 lw 3 pt 3 ps 0.5
set style line 22 linecolor rgb "orange" lt 2 lw 3 pt 3 ps 0.5
set style line 23 linecolor rgb "orange" lt 3 lw 3 pt 3 ps 0.5
set style line 24 linecolor rgb "orange" lt 4 lw 3 pt 3 ps 0.5
set style line 25 linecolor rgb "orange" lt 5 lw 3 pt 3 ps 0.5
set style line 26 linecolor rgb "orange" lt 6 lw 3 pt 3 ps 0.5
set style line 27 linecolor rgb "orange" lt 7 lw 3 pt 3 ps 0.5
set style line 28 linecolor rgb "orange" lt 8 lw 3 pt 3 ps 0.5
set style line 29 linecolor rgb "orange" lt 9 lw 3 pt 3 ps 0.5


set style line 31 linecolor rgb "green"  lt 1 lw 3 pt 3 ps 0.5
set style line 32 linecolor rgb "green"  lt 2 lw 3 pt 3 ps 0.5
set style line 33 linecolor rgb "green"  lt 3 lw 3 pt 3 ps 0.5
set style line 34 linecolor rgb "green"  lt 4 lw 3 pt 3 ps 0.5
set style line 35 linecolor rgb "green"  lt 5 lw 3 pt 3 ps 0.5
set style line 36 linecolor rgb "green"  lt 6 lw 3 pt 3 ps 0.5
set style line 37 linecolor rgb "green"  lt 7 lw 3 pt 3 ps 0.5
set style line 38 linecolor rgb "green"  lt 8 lw 3 pt 3 ps 0.5
set style line 39 linecolor rgb "green"  lt 9 lw 3 pt 3 ps 0.5


set style line 4 linecolor rgb "blue"   lt 4 lw 3 pt 3 ps 0.5
set style line 5 linecolor rgb "violet" lt 5 lw 3 pt 3 ps 0.5

SWRDP='"../../../eos.hadron.swrdp/eos_swrdp_l0059_L97a32.csv"'
ZETA='0.059'



#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

#set output "../plots/MFT.QCD.mu_P.eps"

set output "./swrdp_59_TODAS_MFTQCD.eps"


set key top right box linestyle -1 opaque

unset xrange
unset yrange

set xrange[1000:3000]
set yrange[40:700]
#set ytics 100
#set xtics 250
set grid

set xlabel '{/Symbol m} [MeV]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

set title 'SWRDP, {/Symbol z}=0.059 - MFTQCD, {/Symbol m} {/Symbol \264} P'

#set label 1 at   500, 1000 '{/Symbol x}=0.0015' font "cmr10,15"
#set label 2 at  1500, 2000 '{/Symbol x}=0.0030' font "cmr10,15"
#set label 3 at  2500, 3600 '{/Symbol x}=0.0045' font "cmr10,15"
#set label 4 at  3000, 3300 '{/Symbol x}=0.0060' font "cmr10,15"
#set label 5 at  3000, 2150 '{/Symbol x}=0.0075' font "cmr10,15"
# set arrow from 3000,2000 to 2950,2150 nohead


columns="4:2"

plot @SWRDP using @columns ls 10 title "SWRDP - {/Symbol z}=0.059", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00040.csv" using @columns ls 21 title "MFTQCD - {/Symbol x}=0.00040", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00050.csv" using @columns ls 22 title "MFTQCD - {/Symbol x}=0.00050", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00070.csv" using @columns ls 23 title "MFTQCD - {/Symbol x}=0.00070", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00090.csv" using @columns ls 24 title "MFTQCD - {/Symbol x}=0.00090", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00100.csv" using @columns ls 25 title "MFTQCD - {/Symbol x}=0.00100", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0015.csv" using @columns ls 31 title "MFTQCD - {/Symbol x}=0.000150", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0030.csv" using @columns ls 32 title "MFTQCD - {/Symbol x}=0.000300", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0045.csv" using @columns ls 33 title "MFTQCD - {/Symbol x}=0.000450", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0050.csv" using @columns ls 34 title "MFTQCD - {/Symbol x}=0.000500", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0060.csv" using @columns ls 35 title "MFTQCD - {/Symbol x}=0.000600", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0070.csv" using @columns ls 36 title "MFTQCD - {/Symbol x}=0.000700", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0075.csv" using @columns ls 37 title "MFTQCD - {/Symbol x}=0.000750", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0090.csv" using @columns ls 38 title "MFTQCD - {/Symbol x}=0.000900", \


set output "./swrdp_59_MAXWELL_MFTQCD.eps"

set key top left box linestyle -1 opaque

set xrange[1000:1700]
set yrange[0:500]

plot @SWRDP using @columns ls 10 title "SWRDP - {/Symbol z}=0.059", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00040.csv" using @columns ls 21 title "MFTQCD - {/Symbol x}=0.00040", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00050.csv" using @columns ls 22 title "MFTQCD - {/Symbol x}=0.00050", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00070.csv" using @columns ls 23 title "MFTQCD - {/Symbol x}=0.00070", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00090.csv" using @columns ls 24 title "MFTQCD - {/Symbol x}=0.00090", \
     "../../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_00100.csv" using @columns ls 25 title "MFTQCD - {/Symbol x}=0.00100", \
