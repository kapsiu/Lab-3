#Wprowadzenie
#1:
git commit
git commit
#2:
git branch bugFix
git checkout bugFix
#3:
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
#4:
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
#Rozkręcenie
#1:
git checkout C4
#2:
git checkout bugFix^
#3:
git branch -f main C6
git branch -f bugFix C0
git checkout C1
#4:
git reset local~1
git checkout pushed
git revert pushed
#Przenoszenie pracy
#1:
git cherry-pick C3 C4 C7
#2:
git rebase -i main~4 --aboveAll
#Po trochu wszystkiego
#1:
git checkout main
git cherry-pick C4
#2:
git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAll
git branch -f main caption
#3:
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3
#4:
git tag v0 C1
git tag v1 C2
git checkout C2
#5:
git commit
#Tematy zaawansowane
#1:
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main
#2:
git branch bugWork main~^2~
#3:
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2
#Push & Pull -- Zdalne repozytoria
#1:
git clone
#2:
git commit
git checkout o/main
git commit
#3:
git fetch
#4:
git pull
#5:
git clone
git fakeTeamwork main 2
git commit
git pull
#6:
git clone
git commit
git commit
git push
#7:
git clone
git fakeTeamwork
git commit
git pull --rebase
git push
#8:
git checkout -b feature
git checkout main
git reset --hard o/main
git push origin feature
git checkout feature
#Do źródła i dalej -- zaawansowane zdalne repozytoria
#1:
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push
#2:
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push
#3:
git checkout -b side o/main
git commit
git pull --rebase
git push
#4:
git push origin main
git push origin foo
#5:
git push origin main~1:foo
git push origin foo:main
#6:
git fetch origin C3:foo
git fetch origin C6:main
git checkout foo
git merge main
#7:
git push origin :foo
git fetch origin :bar
#8:
git pull origin C3:foo
git pull origin C2:side