#!/bin/bash

./extract.awk original/eos_swrdp_l0040_L97a32.dat > __eos_swrdp_l0040_L97a32.csv
./extract.awk original/eos_swrdp_l0049_L97a32.dat > __eos_swrdp_l0049_L97a32.csv
./extract.awk original/eos_swrdp_l0059_L97a32.dat > __eos_swrdp_l0059_L97a32.csv
./extract.awk original/eos_swrdp_l0071_L97a32.dat > __eos_swrdp_l0071_L97a32.csv
./extract.awk original/eos_swrdp_l0085_L97a32.dat > __eos_swrdp_l0085_L97a32.csv

tac __eos_swrdp_l0040_L97a32.csv > eos_swrdp_l0040_L97a32.csv
tac __eos_swrdp_l0049_L97a32.csv > eos_swrdp_l0049_L97a32.csv
tac __eos_swrdp_l0059_L97a32.csv > eos_swrdp_l0059_L97a32.csv
tac __eos_swrdp_l0071_L97a32.csv > eos_swrdp_l0071_L97a32.csv
tac __eos_swrdp_l0085_L97a32.csv > eos_swrdp_l0085_L97a32.csv
