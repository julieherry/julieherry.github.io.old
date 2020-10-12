rm -rf 758-evergreen* apropos assets au-beau-milieu* images tags the-big* tmp 404.html index.html feed.xml
cp -r ../julieherry/_site/ ./
ls **/*.html | xargs -I{} sed -i -e 's/http:\/\/localhost:4000//g' {}
rm **/*.html-e
gsed -i  's/http:\/\/localhost:4000/http:\/\/julieherry.com/g' sitemap.xml
gsed -i  's/http:\/\/localhost:4000/http:\/\/julieherry.com/g' robots.txt
gsed -i  's/http:\/\/localhost:4000/http:\/\/julieherry.com/g' feed.xml
git add  .
git commit -am "$(date '+%Y-%m-%d %H:%M:%S')"
#git push origin master
