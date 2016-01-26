#!/usr/bin/gnuplot

reset

set xlabel '{/Symbol e} [MeV fm^{-3}]'

set ylabel 'P [MeV fm^{-3}]'

set xrange[0:2000]
set yrange[0:600]

set datafile separator ","


set encoding utf8
set terminal post eps enhanced mono
set output "takatsuka.eps"

set style fill pattern 7

set title 'Equação de Estado Takatsuka'
p(x) = x

plot "TNI2.csv" using 1:2 with lines lw 2  lt rgb "blue" title "TNI2", \
    "TNI3.csv" using 1:2 with lines lw 2  lt rgb "red" title "TNI3", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0015.FULL.NUC.csv" using 1:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.003.FULL.NUC.csv" using 1:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0045.FULL.NUC.csv" using 1:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.006.FULL.NUC.csv" using 1:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0075.FULL.NUC.csv" using 1:2 with lines lw 2  lt rgb "green" title "MFTQCD"
