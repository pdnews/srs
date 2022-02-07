#./configure --osx --ffmpeg-tool=on
make -j4

ulimit -HSn 1107
if [ "$?" == "0" ]; then
    ./etc/init.d/srs stop
    ./etc/init.d/srs start
    tail -n 20 -f objs/srs.log
fi
