#!/usr/bin/gnuplot

reset

set xlabel '{/Symbol m} [MeV]'

set ylabel 'P [MeV fm^{-3}]'

set xrange[1000:1500]
set yrange[200:400]

set datafile separator ","


set encoding utf8
set terminal post eps enhanced mono
set output "takatsuka_p_mu.eps"

set style fill pattern 7

set title 'Equação de Estado Takatsuka'
p(x) = x

plot "TNI2.csv" using 4:2 with lines lw 2  lt rgb "blue" title "TNI2", \
    "TNI3.csv" using 4:2 with lines lw 2  lt rgb "red" title "TNI3", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0015.FULL.NUC.csv" using 4:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.003.FULL.NUC.csv" using 4:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0045.FULL.NUC.csv" using 4:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.006.FULL.NUC.csv" using 4:2 with lines lw 2  lt rgb "green" title "MFTQCD", \
    "../eos.mft.qcd/MFT.QCD.B_80_XI_0.0075.FULL.NUC.csv" using 4:2 with lines lw 2  lt rgb "green" title "MFTQCD"
