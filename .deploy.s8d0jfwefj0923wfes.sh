cp -r ../julieherry/_site/ ./
ls **/*.html | xargs -I{} sed -i -e 's/http:\/\/localhost:4000//g' {}
git add .
git commit -am "$(date '+%Y-%m-%d %H:%M:%S')"
git push origin master
