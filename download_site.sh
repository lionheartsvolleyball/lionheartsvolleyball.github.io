wget -k -K  -E -r -l 10 -p -N -F --restrict-file-names=windows -nH testdomain845.wordpress.com

BAD_BANNER="<link crossorigin='anonymous' rel='stylesheet' id='all-css-2-1' href='https://s2.wp.com/_static/??/wp-content/blog-plugins/wordads/global.css,/wp-content/blog-plugins/marketing-bar/css/marketing-bar.css?m=1697652279j&cssminify=yes' type='text/css' media='all' />"

find . -mindepth 1 -type f -exec sed -i '' "s|${BAD_BANNER}||g" {} \;

find . -type f -exec sed -i '' 's|{"is_current_user_blog_owner":false}|{"is_current_user_blog_owner":true}|g' {} \;

