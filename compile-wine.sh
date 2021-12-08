cd /mnt/build
wget -O crossover-sources.tar.gz https://media.codeweavers.com/pub/crossover/source/crossover-sources-21.1.0.tar.gz
tar -xzf crossover-sources.tar.gz sources/wine
cd sources/wine
echo '#define WINDEBUG_WHAT_HAPPENED_MESSAGE "This can be caused by a problem in the program or a deficiency in Wine. You may want to check <a href=\"http://www.codeweavers.com/compatibility/\">http://www.codeweavers.com/compatibility/</a> for tips about running this application."' >> include/distversion.h
echo '#define WINDEBUG_USER_SUGGESTION_MESSAGE "If this problem is not present under Windows and has not been reported yet, you can save the detailed information to a file using the \"Save As\" button, then <a href=\"http://www.codeweavers.com/support/tickets/enter/\">file a bug report</a> and attach that file to the report."' >> distversion.h
./configure
make
make install
mkdir /mnt/build/wine-crossover
cp -R /usr/local/bin /mnt/build/sources/wine/include /mnt/build/wine-crossover
mkdir /mnt/build/wine-crossover/lib
cp -R /usr/local/lib/wine /usr/local/lib/libwine* /mnt/build/wine-crossover/lib
mkdir /mnt/build/wine-crossover/share
cp -R /usr/local/share/man /usr/local/share/wine /mnt/build/wine-crossover/share
