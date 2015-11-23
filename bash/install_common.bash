common_install_scripts=`ls ${GLB_BASH_HOME}/common/`

for script in $common_install_scripts
do
    source ${GLB_BASH_HOME}/common/$script
done
