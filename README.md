# opus-transcoder
A little bash script that will crawl through a directory and transcode all mp3 files into opus file.

# Usage: convert.sh

./convert.sh -b 20  
where:  
* -b is the bitrate the mp3 will be transcoded to

# Usage: multi-convert.sh

./multi-convert.sh -b 20 -p 2  
where:  
* -b is the bitrate the mp3 will be transcoded to
* -p is the number of parallel convert.sh will be spun up

