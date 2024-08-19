#!/usr/bin/bash

ClusterId=$1
ProcId=$2

RandNo=$(( 1314159 + RANDOM %9862627))

echo "Loading environmental variables.."
source /afs/cern.ch/user/your user name/.bashrc

echo "Loading environmental variables for genie.."
source /cvmfs/ship.cern.ch/SHiP-2018/latest/setUp.sh


cd /afs/cern.ch/user/your user name/file name


# Flavor
f_name="nu_e"
f_pdg="12"



echo "Checking for the output data directory.."
if [  ! -d /eos/experiment/ship/user/your user name/ outout data directory name/nu_eProd ]; then
      mkdir -p /eos/experiment/ship/user/your user name/ outout data directory name/nu_eProd
  fi

  echo "Processing $f_name flavor.."
  gmkspl -p $f_pdg -t 1000822040[0.014],1000822060[0.241],1000822070[0.221],1000822080[0.524] -n 500 -e 400 -o /eos/experiment/ship/user/your user name/ outout data directory name/nu_eProd/"$f_name"_"$ClusterId"_"$ProcId".xml --seed $RandNo &&


    echo "Process has finished successfully!"
