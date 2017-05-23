---
layout: page
title: Git
---

# Apps

* [Ship](https://www.realartists.com)
  > Fast, native, comprehensive issue tracking for GitHub

## Git config

* If git uses https not ssh

```bash
  git remote set-url origin git@gist.github.com:<Project code>
```

* [GitHub Desktop: error: cannot run gpg: No such file or directory](https://github.com/isaacs/github/issues/675)

```
  git config --global gpg.program $(which gpg)
  echo "no-tty" >> ~/.gnupg/gpg.conf
```
