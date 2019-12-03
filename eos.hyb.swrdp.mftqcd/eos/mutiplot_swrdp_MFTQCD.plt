#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set output "./multiplot_swrdp_MFTQCD.eps"

set style data lines

set style line 1 linecolor rgb "red"    lt 1 lw 3 pt 3 ps 0.5
set style line 2 linecolor rgb "orange" lt 2 lw 3 pt 3 ps 0.5
set style line 3 linecolor rgb "green"  lt 3 lw 3 pt 3 ps 0.5
set style line 4 linecolor rgb "blue"   lt 4 lw 3 pt 3 ps 0.5
set style line 5 linecolor rgb "violet" lt 5 lw 3 pt 3 ps 0.5


set multiplot layout 3,2 rowsfirst

set key left box linestyle -1

set xrange[900:2200]
set yrange[0:800]

set ytics 200


# Margins for each row resp. column
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55"
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20"
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.55"
RMARGIN = "set lmargin at screen 0.55; set rmargin at screen 0.95"



NOXTICS = "set xtics 900, 300, 2100; set format x ''"

XTICS = "set xtics 900, 300, 2100; set format x '%.0f'; \
         set xlabel '{/Symbol e} [MeV fm^{-3}]'"

NOYTICS = "set format y ''; unset ylabel"

YTICS = "set format y '%.0f'; set ylabel 'Pressure [MeV fm^{-3}]'"

# set title 'Eqs. de Estado, {/Symbol e} {/Symbol \264} P'
#set xlabel '{/Symbol e} [MeV fm^{-3}]'
#set ylabel 'Pressure [MeV fm^{-3}]'

columns="($4):($2/1)"

@TMARGIN; @LMARGIN
@NOXTICS; @YTICS
plot "../../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns ls 1 title "SWRDP 49", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0015.csv" using @columns ls 2 title "{/Symbol x}=0.0015", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0030.csv" using @columns ls 2 title "{/Symbol x}=0.0030", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0045.csv" using @columns ls 2 title "{/Symbol x}=0.0045", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0060.csv" using @columns ls 2 title "{/Symbol x}=0.0065", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0075.csv" using @columns ls 2 title "{/Symbol x}=0.0075", \


@TMARGIN; @RMARGIN
@NOXTICS; @NOYTICS
plot "../../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns ls 1 title "SWRDP 49", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0015.csv" using @columns ls 2 title "{/Symbol x}=0.0015", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0030.csv" using @columns ls 2 title "{/Symbol x}=0.0030", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0045.csv" using @columns ls 2 title "{/Symbol x}=0.0045", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0060.csv" using @columns ls 2 title "{/Symbol x}=0.0065", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0075.csv" using @columns ls 2 title "{/Symbol x}=0.0075", \

@BMARGIN; @LMARGIN
@XTICS; @YTICS
plot "../../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns ls 1 title "SWRDP 49", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0015.csv" using @columns ls 2 title "{/Symbol x}=0.0015", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0030.csv" using @columns ls 2 title "{/Symbol x}=0.0030", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0045.csv" using @columns ls 2 title "{/Symbol x}=0.0045", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0060.csv" using @columns ls 2 title "{/Symbol x}=0.0065", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0075.csv" using @columns ls 2 title "{/Symbol x}=0.0075", \

@BMARGIN; @RMARGIN
@XTICS; @NOYTICS
plot "../../eos.hadron.swrdp/eos_swrdp_l0049_L97a32.csv" using @columns ls 1 title "SWRDP 49", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0015.csv" using @columns ls 2 title "{/Symbol x}=0.0015", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0030.csv" using @columns ls 2 title "{/Symbol x}=0.0030", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0045.csv" using @columns ls 2 title "{/Symbol x}=0.0045", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0060.csv" using @columns ls 2 title "{/Symbol x}=0.0065", \
     "../../eos.quarks.mftqcd/eos/TESE/mftqcd_90_0_0075.csv" using @columns ls 2 title "{/Symbol x}=0.0075", \

