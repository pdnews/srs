
./etc/init.d/srs stop
ulimit -HSn 1107

make -j 4

if [ "$?" -eq "0" ]; then
    ./objs/srs -c conf/srs.conf
    tail -n 30 -f ./objs/srs.log
fi