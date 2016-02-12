#!/bin/bash

clear

MAXWELL_CONSTR=../../eos.maxwell.construction/src/eos.maxwell.construction/eos_maxwell_construction.py

${MAXWELL_CONSTR} --config=SWRDP_MIT.properties.conf > ./SWRDP_0085.MIT.B_130.NUC.csv
