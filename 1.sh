#!/bin/sh


rm -r -f Packages.bz2
rm -r -f Packages
dpkg-scanpackages -m ./debs > Packages
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages

