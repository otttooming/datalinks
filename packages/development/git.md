---
layout: page
title: Git
---

# Commands

- Checkout a Remote Branch

```
  git checkout -b feature-branch origin/feature-branch
```

- Create a branch from a commit

```
  git branch branchname <sha1-of-commit>
```

- List all available remote branches

```
  git branch -r
```

# Release

- [semantic-release/semantic-release](https://github.com/semantic-release/semantic-release)
  > Fully automated version management and package publishing

# Apps

- [Ship](https://www.realartists.com)
  > Fast, native, comprehensive issue tracking for GitHub

## Git config

- If git uses https not ssh

```bash
  git remote set-url origin git@gist.github.com:<Project code>
```

- [GitHub Desktop: error: cannot run gpg: No such file or directory](https://github.com/isaacs/github/issues/675)

```
  git config --global gpg.program $(which gpg)
  echo "no-tty" >> ~/.gnupg/gpg.conf
```

### Conditional includes

[Conditional includes](https://git-scm.com/docs/git-config#_conditional_includes)

Global config ~/.gitconfig

```
[user]
    name = John Doe
    email = john@doe.tld

[includeIf "gitdir:~/work/"]
    path = ~/work/.gitconfig
```

Work specific config ~/work/.gitconfig

```
[user]
    email = john.doe@company.tld
```

## Rename git branch locally and remotely

```bash
  git branch -m old_branch new_branch         # Rename branch locally
  git push origin :old_branch                 # Delete the old branch
  git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote
```

## Rebase

- [Why you should stop using Git rebase](https://medium.com/@fredrikmorken/why-you-should-stop-using-git-rebase-5552bee4fed1)

### Rebase playground

```bash
  #! /bin/bash
  set -e
  mkdir repo
  cd repo

  git init
  touch file
  git add file
  git commit -m 'init'

  echo a > file0
  git add file0
  git commit -m 'added a to file'

  git checkout -b A
  echo b >> fileA
  git add fileA
  git commit -m 'b added to file'
  echo c >> fileA
  git add fileA
  git commit -m 'c added to file'

  git checkout -b B
  echo x >> fileB
  git add fileB
  git commit -m 'x added to file'
  echo y >> fileB
  git add fileB
  git commit -m 'y added to file'
  cd ..

  git clone repo rebase
  cd rebase
  git checkout master
  git checkout A
  git checkout B
  git rebase master
  cd ..

  git clone repo onto
  cd onto
  git checkout master
  git checkout A
  git checkout B
  git rebase --onto master A B
  cd ..

  diff <(cd rebase; git log --graph --all) <(cd onto; git log --graph --all)
```
