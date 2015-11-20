pkg_install_scripts=`ls ./pkgs`

for script in $pkg_install_scripts
do
    source ./pkgs/$script
done
