cp -r ../julieherry/_site/ ./
ls **/*.html | xargs -I{} sed -i -e 's/http:\/\/localhost:4000//g' {}
sed -i -e 's/http:\/\/localhost:4000/http:\/\/julieherry.com/g' sitemap.xml && rm sitemap.xml-e
sed -i -e 's/http:\/\/localhost:4000/http:\/\/julieherry.com/g' robots.txt && rm robots.txt-e
rm **/*.html-e
git add .
git commit -am "$(date '+%Y-%m-%d %H:%M:%S')"
#git push origin master
