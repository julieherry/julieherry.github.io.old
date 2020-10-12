rm -rf 758-evergreen* apropos assets au-beau-milieu* images tags the-big* tmp 404.html index.html feed.xml
cp -r ../julieherry/_site/ ./

gsed -i  's/http:\/\/localhost:4000/https:\/\/www.julieherry.com/g' sitemap.xml
gsed -i  's/http:\/\/localhost:4000/https:\/\/www.julieherry.com/g' robots.txt
gsed -i  's/http:\/\/localhost:4000/https:\/\/www.julieherry.com/g' feed.xml
git add  .
# git commit -am "$(date '+%Y-%m-%d %H:%M:%S')"

# ls **/*.html | xargs -I{}  gsed -i 's/http:\/\/localhost:4000/https:\/\/julieherry.com/g' {}
# git push origin master
