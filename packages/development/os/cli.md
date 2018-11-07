---
title: Command line interface
layout: page
---

* ***GitHub*** [awesome-osx-command-line](https://github.com/herrbischoff/awesome-osx-command-line)
  > A curated list of shell commands and tools specific to OS X.

* ***GitHub*** [k4m4/terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy)
  > A curated list of Terminal frameworks, plugins & resources for CLI lovers.

* ***GitHub*** [bhilburn/powerlevel9k](https://github.com/bhilburn/powerlevel9k)
  > Powerlevel9k is a theme for ZSH

* [ogham/exa](https://github.com/ogham/exa)
  > Replacement for 'ls' written in Rust. https://the.exa.website/

* [nicolargo/glances](https://github.com/nicolargo/glances)
  > A top/htop alternative

# Node.js

* [awesome-nodejs/command-line-utilities](https://github.com/sindresorhus/awesome-nodejs#command-line-utilities)

* [vadimdemedes/ink](https://github.com/vadimdemedes/ink)
  > React for interactive command-line apps

# Terminals

* ***GitHub*** [Black Screen](https://github.com/vshatskyi/black-screen)
  > Black Screen is an IDE in the world of terminals. Strictly speaking, it's both a terminal emulator and an interactive shell based on Electron. 

* ***GitHub*** [hyper.js](https://github.com/zeit/hyper)
  > A terminal built on web technologies

* [kovidgoyal/kitty](https://github.com/kovidgoyal/kitty)

* [denysdovhan/spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)
  > A Zsh prompt for Astronauts

# Logs

```
  tail -f -n 200 log/development.log
```

# macOS

## restart coreaudio daemon

```bash
  sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`
```

# Terminal development

* [terkelg/prompts](https://github.com/terkelg/prompts)
  > Lightweight, beautiful and user-friendly interactive prompts
