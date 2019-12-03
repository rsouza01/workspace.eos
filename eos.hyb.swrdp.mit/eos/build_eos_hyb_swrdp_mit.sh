#!/bin/bash

clear

MAXWELL_CONSTR=../../eos.maxwell.construction/src/eos.maxwell.construction/eos_maxwell_construction.py

echo "Building SWRDP_0085.MIT.B_90.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_90.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_90.NUC.csv

echo "Building SWRDP_0085.MIT.B_110.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_110.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_110.NUC.csv

echo "Building SWRDP_0085.MIT.B_130.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_130.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_130.NUC.csv

echo "Building SWRDP_0085.MIT.B_150.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_150.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_150.NUC.csv

echo "Building SWRDP_0085.MIT.B_170.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_170.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_170.NUC.csv

echo "Building SWRDP_0085.MIT.B_190.NUC.csv..."
${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf --quarks=../eos.quarks.mit/mit_bag_model_B_190.csv --hadrons=../eos.hadron.swrdp/eos_swrdp_l0085_L97a32.csv --mu_0=1010 > ./SWRDP_0085.MIT.B_190.NUC.csv
