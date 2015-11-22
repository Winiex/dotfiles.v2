common_install_scripts=`ls ./common/`

for script in $common_install_scripts
do
    source ./common/$script
done