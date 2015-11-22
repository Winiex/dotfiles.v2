pkg_install_scripts=`ls ${GLB_OSX_INSTALL_HOME}/pkgs/`

for script in $pkg_install_scripts
do
    source ${GLB_OSX_INSTALL_HOME}/pkgs/$script
done