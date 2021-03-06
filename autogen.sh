#!/bin/sh
# you can either set the environment variables AUTOCONF, AUTOHEADER, AUTOMAKE,
# ACLOCAL, AUTOPOINT and/or LIBTOOLIZE to the right versions, or leave them
# unset and get the defaults
if [ ! -f NEWS ]
then
    touch NEWS
fi
if [ ! -f ChangeLog ]
then
    touch ChangeLog
fi

autoreconf --verbose --force --install --make $1 || {
 echo 'autogen.sh failed';
 exit 1;
}

echo
echo "Now type 'configure' then 'make' to compile this module."
echo
