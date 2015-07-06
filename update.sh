./remove.sh
./packages.sh

cp *.deb debs/
rm *.deb
dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages
