#!/usr/bin/env bash
set -x

#declare myCounter='0'
export PACKER_NO_COLOR='false'
declare packerFile='macos-sierra-10.12.json'
#declare vagrantBox="$HOME/vms/vagrant/boxes/mac_osx/sierra.box"
declare isoDir="$HOME/Downloads/isos/osx"
declare osxISO='OSX_InstallESD_11.12_16A323.dmg'
declare isoURL="$isoDir/$osxISO"
declare defsValBld="-only=vmware-iso -var iso_url=$isoURL $packerFile"

# Associative array;                  (indexed) array
declare -A subCMDVals;                declare -a pSubCMDs;
subCMDVals["validate"]="$defsValBld"; pSubCMDs+=( "validate" )
subCMDVals["inspect"]="$packerFile";  pSubCMDs+=( "inspect" )
subCMDVals["build"]="$defsValBld";    pSubCMDs+=( "build" )


for i in "${!pSubCMDs[@]}"; do
    # Leverage array index to order associative array params/values
    #       prog=packer / sub-command / value passed to sub-command / index
    printf '%s\n' "packer ${pSubCMDs[$i]} ${subCMDVals[${pSubCMDs[$i]}]}"
done


exit
