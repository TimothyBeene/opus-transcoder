# opus-transcoder
A little bash script that will crawl through a directory and transcode all mp3 files into opus file.

# convert.sh Usage

./convert.sh -b 20
where:
    -b is the bitrate the mp3 will be transcoded to

# multi-convert.sh Usage

./multi-convert.sh -b 20 -p 2
where:
    -b is the bitrate the mp3 will be transcoded to
    -p is the number of parallel convert.sh will be spun up

