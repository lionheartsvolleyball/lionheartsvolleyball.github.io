wget -k -K  -E -r -l 10 -p -N -F --restrict-file-names=windows -nH testdomain845.wordpress.com

BAD_BANNER=""

find . -mindepth 1 -type f -exec sed -i '' "s|${BAD_BANNER}||g" {} \;


