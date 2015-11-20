software_install_scripts=`ls ./software`

for script in $software_install_scripts
do
    source ./software/$script
done
