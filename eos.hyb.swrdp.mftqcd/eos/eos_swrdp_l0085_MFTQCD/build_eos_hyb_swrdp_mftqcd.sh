#!/bin/bash

clear

#DO NOT CHANGE.
MAXWELL_CONSTR=../../../../eos.maxwell.construction/src/eos.maxwell.construction/eos_maxwell_construction.py

#HADRON EOS
EOS_HADRON_PREFIX="SWRDP_0085"
EOS_HADRON_INPUT_DIR=../../../eos.hadron.swrdp/
EOS_HADRON_FILE=${EOS_HADRON_INPUT_DIR}eos_swrdp_l0085_L97a32.csv


#QUARK EOS
EOS_QUARK_PREFIX="MFTQCD_B90_XI"
EOS_MFTQCD_XI_VALUES=( 00050 00040)

#EOS_MFTQCD_XI_VALUES=(00100)

EOS_QUARK_INPUT_DIR=../../../eos.quarks.mftqcd/eos/TESE/

#PROPERTIES
PROP_FILE=SWRDP_MFTQCD.properties.conf

# NAME PATTERN: eos.TYPE.HADRON_EOS-QUARK_EOS.UNIT.csv
# TYPE=(QUARK, HADRON, HYB)
# UNIT=(CGS, SI, NUC)

SEPARATOR="---------------------------------------------------------------------------------\n"
TITLE="Generating hybrid equation of state ${EOS_HADRON_PREFIX}-${EOS_QUARK_PREFIX}.\n${SEPARATOR}"
echo -e ${TITLE}

for xi in "${EOS_MFTQCD_XI_VALUES[@]}"

do

    OUT_FILE_NAME="eos.HYB.${EOS_HADRON_PREFIX}-${EOS_QUARK_PREFIX}_${xi}.NUC.csv"

    echo "Building ./${OUT_FILE_NAME}..."

    EOS_INPUT_QUARK_FILE=${EOS_QUARK_INPUT_DIR}mftqcd_90_0_${xi}.csv

    ${MAXWELL_CONSTR} --config=${PROP_FILE} --quarks=${EOS_INPUT_QUARK_FILE} --hadrons=${EOS_HADRON_FILE} --mu_0=1600 > ./${OUT_FILE_NAME}

done

echo -e "${SEPARATOR}Done."


