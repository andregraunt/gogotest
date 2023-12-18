
test go ruby
git remote remove origin

Git global setup
git config --global user.name "Andre Graunt"
git config --global user.email "andregraunt@gmail.com"
Create a new repository
git clone https://gitlab.com/andregraunt/gogotest.git
cd gogotest
git switch --create main
touch README.md
git add README.md
git commit -m "add README"
git push --set-upstream origin main
Push an existing folder
cd existing_folder
git init --initial-branch=main
git remote add origin https://gitlab.com/andregraunt/gogotest.git
git add .
git commit -m "Initial commit"
git push --set-upstream origin main
Push an existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin https://gitlab.com/andregraunt/gogotest.git
git push --set-upstream origin --all
git push --set-upstream origin --tags


open setting - repository - Protected branches - enable force push -f
git remote add origin https://gitlab.com/andregraunt/gopro.git
git branch -M main
git add .
git status
git commit -m "fir 1 comm"
git push -uf origin main
git add .
git commit -m "fir 2 comm"
git push -uf origin main
<<
