software_install_scripts=`ls ${GLB_OSX_INSTALL_HOME}/software/`

for script in $software_install_scripts
do
    source ${GLB_OSX_INSTALL_HOME}/software/$script
done
