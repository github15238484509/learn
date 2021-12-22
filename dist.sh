#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
# npm run build

# 进入生成的文件夹
# if [ ! -d .git]; then
	git init
# fi

git add .
echo "請輸入躰驕傲信息"
read info
git commit -m '$info'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
if [ ! -d .git]; then
	git push -f git@github.com:github15238484509/learn.git master
else
	git push
fi

cd docs/.vuepress/dist

if [ ! -d .git]; then
	git init
fi

git add .
git commit -m '$info'

# 如果发布到 https://<USERNAME>.github.io/<REPO>

if [ ! -d .git]; then
	git push -f git@github.com:github15238484509/learn.git master:document
else
	git push
fi

cd -
