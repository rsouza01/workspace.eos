#!/usr/bin/gnuplot
# Arquivo: eos.hyb.swrpd.mit.plt

reset

#Macros

set macro


# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "Verdana,12"
set lmargin 10
set grid

set palette model RGB functions 0.4+gray/1.667, 0.75+gray/4.0, 0.4+gray/1.667

set output "./quarks.eps"

#---------------------------------------------------------------------------------------------------
#FILES
#---------------------------------------------------------------------------------------------------

colors = "blue red green"

color_collection_plot = ""
titles_collection = ""

#---------------------------------------------------------------------------------------------------
# MIT Bag model
#---------------------------------------------------------------------------------------------------

mit_bag_folder = "../eos.quarks.mit/"

mit_bag_files = "50 57_5 60 70 80 82 90"

mit_bag_color = 1
mit_files_collection = ""

do for [mit_B in mit_bag_files] {
    mit_files_collection = mit_files_collection.' '.mit_bag_folder.sprintf('mit_bag_model_B_%s.csv ', mit_B)
    color_collection_plot = color_collection_plot." ".word(colors, mit_bag_color)
    titles_collection = titles_collection." ".sprintf("MIT(B=%sMeV)", mit_B)
}

# files_collection = "".mit_files_collection

#---------------------------------------------------------------------------------------------------
# MFT QCD
#---------------------------------------------------------------------------------------------------

mft_qcd_folder = "../eos.quarks.mftqcd/"

mft_qcd_files = "10 20 30 40 50 60 70 80 90"

mft_qcd_color=2
mft_qcd_collection = ""

do for [mft_B in mft_qcd_files] {
    mft_qcd_collection = mft_qcd_collection.' '.mft_qcd_folder.sprintf('mftqcd_90_0_00%s.NUC.csv', mft_B)
    color_collection_plot = color_collection_plot." ".word(colors, mft_qcd_color)
    titles_collection = titles_collection." ".sprintf("MFTQCD(B=90MeV,%s)", mft_B)
}

files_collection = mit_files_collection." ".mft_qcd_collection


#---------------------------------------------------------------------------------------------------
# QCD IRE
#---------------------------------------------------------------------------------------------------

qcd_ire_folder = "../eos.quarks.qcdire/"

qcd_ire_color=3
qcd_ire_collection = " ".qcd_ire_folder."qcd.ire.eos.UDS.NUC.csv"

color_collection_plot = color_collection_plot." ".word(colors, qcd_ire_color)
titles_collection = titles_collection." "."QCDIRE"



files_collection = mit_files_collection." ".mft_qcd_collection." ".qcd_ire_collection


#---------------------------------------------------------------------------------------------------
#PLOT 1 - TODAS EOS - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key right bottom box width 2 height 1

set xrange[0:1500]
set yrange[0:200]

set title 'Eqs. de Estado, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]'
set ylabel 'Pressure [MeV fm^{-3}]'


plot for [i=1:words(files_collection)]  word(files_collection, i) using 1:2 with lines lt rgb word(color_collection_plot, i) title word(titles_collection, i)



#---------------------------------------------------------------------------------------------------
#PLOT 2 - TODAS EOS - pressure x epsilon
#---------------------------------------------------------------------------------------------------


#set output "../plots/MFT.QCD.epsilon_P.eps"

set key right bottom box linestyle -1

set yrange[0:1500]
set xrange[0:200]

unset xrange
unset yrange

set title 'Eqs. de Estado,  P {/Symbol \264} {/Symbol e}'
set xlabel 'Pressure [MeV fm^{-3}]'
set ylabel '{/Symbol e} [MeV fm^{-3}]'

#set arrow from 120,0 to 120,500 nohead

# plot "./SWRDP_0085.MIT.B_90.NUC.csv" using 2:1 with lines lt rgb "blue" title "SWRDP85 + MIT(B=90 MeV)"
plot for [i=1:words(files_collection)]  word(files_collection, i) using 2:1 with lines lt rgb word(color_collection_plot, i) title word(titles_collection, i)


#---------------------------------------------------------------------------------------------------
#PLOT 3 - TODAS EOS - mu x pressure
#---------------------------------------------------------------------------------------------------

#set output "../plots/MFT.QCD.mu_P.eps"

set key top left box linestyle -1

unset xrange
unset yrange

set xrange[0:2000]
#set yrange[0:2000]

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

plot for [i=1:words(files_collection)]  word(files_collection, i) using 3:2 with lines lt rgb word(color_collection_plot, i) title word(titles_collection, i)
