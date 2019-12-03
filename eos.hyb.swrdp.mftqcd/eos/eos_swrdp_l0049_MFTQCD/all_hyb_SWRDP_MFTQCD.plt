#!/usr/bin/gnuplot
# Arquivo: eos.hyb.swrpd.mit.plt

reset

#Macros

set macro

set style data lines

set style line 1 linecolor rgb "red"      lt 1 lw 5 pt 3 ps 0.5
set style line 2 linecolor rgb "orange"   lt 2 lw 5 pt 3 ps 0.5
set style line 3 linecolor rgb "green"    lt 3 lw 5 pt 3 ps 0.5
set style line 4 linecolor rgb "blue"     lt 4 lw 5 pt 3 ps 0.5
set style line 5 linecolor rgb "violet"   lt 5 lw 5 pt 3 ps 0.5


# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "Verdana,12"
set lmargin 10
set grid

set palette model RGB functions 0.4+gray/1.667, 0.75+gray/4.0, 0.4+gray/1.667


#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------

set output "./hyb_SWRDP_49_energy_pressure_MFTQCD.eps"

set key right bottom box width 2 height 1 spacing 1.8

set xrange[0:1500]
set yrange[0:200]

set title 'BPS + SWRDP({/Symbol z}=0.049) + MFTQCD(B_{QCD}=90 MeV/fm^{3}), {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]'
set ylabel 'Pressure [MeV fm^{-3}]'

columns="1:2"

plot "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00040.NUC.csv" using @columns ls 1 title "{/Symbol x}=0.00040", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00050.NUC.csv" using @columns ls 2 title "{/Symbol x}=0.00050", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00070.NUC.csv" using @columns ls 3 title "{/Symbol x}=0.00070", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00090.NUC.csv" using @columns ls 4 title "{/Symbol x}=0.00090", \



#---------------------------------------------------------------------------------------------------
#PLOT 2 - TODAS EOS - pressure x epsilon
#---------------------------------------------------------------------------------------------------


set output "./hyb_SWRDP_49_pressure_energy_MFTQCD.eps"

set key right bottom box linestyle -1

set yrange[0:1500]
set xrange[0:200]

unset xrange
unset yrange

set title 'SLY4 + SWRDP + MFTQCD, P  {/Symbol \264} {/Symbol e}'
set xlabel 'Pressure [MeV fm^{-3}]'
set ylabel '{/Symbol e} [MeV fm^{-3}]'

#set arrow from 120,0 to 120,500 nohead

columns="2:1"

plot "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00040.NUC.csv" using @columns ls 1 title "{/Symbol x}=0.00040", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00050.NUC.csv" using @columns ls 2 title "{/Symbol x}=0.00050", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00070.NUC.csv" using @columns ls 3 title "{/Symbol x}=0.00070", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00090.NUC.csv" using @columns ls 4 title "{/Symbol x}=0.00090", \

#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

set output "./hyb_SWRDP_49_mu_pressure_MFTQCD.eps"

set key top left box linestyle -1

unset xrange
unset yrange

set xrange[900:2000]
set yrange[0:2000]

#set ytics 100
#set xtics 250
set grid

set xlabel '{/Symbol m} [MeV]'
set ylabel 'Pressure [MeV fm^{-3}]'

set title 'Eqs. de Estado, {/Symbol m} {/Symbol \264} P'

#set label 1 at   500, 1000 '{/Symbol x}=0.0015' font "cmr10,15"
#set label 2 at  1500, 2000 '{/Symbol x}=0.0030' font "cmr10,15"
#set label 3 at  2500, 3600 '{/Symbol x}=0.0045' font "cmr10,15"
#set label 4 at  3000, 3300 '{/Symbol x}=0.0060' font "cmr10,15"
#set label 5 at  3000, 2150 '{/Symbol x}=0.0075' font "cmr10,15"
# set arrow from 3000,2000 to 2950,2150 nohead

columns="3:2"

plot "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00040.NUC.csv" using @columns ls 1 title "{/Symbol x}=0.00040", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00050.NUC.csv" using @columns ls 2 title "{/Symbol x}=0.00050", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00070.NUC.csv" using @columns ls 3 title "{/Symbol x}=0.00070", \
     "./eos.HYB.SWRDP_0049-MFTQCD_B90_XI_00090.NUC.csv" using @columns ls 4 title "{/Symbol x}=0.00090", \
