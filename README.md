[semaphoreci]: https://semaphoreci.com/nelsonmestevao/dotfiles

<h1 align="center">
  <a target="_blank" href="https://dotfiles.github.io">
    <img src="https://dotfiles.github.io/images/dotfiles-logo.png" alt="dotfiles" width="400px">
  </a>
</h1>

[![Build Status](https://semaphoreci.com/api/v1/nelsonmestevao/dotfiles/branches/master/badge.svg)][semaphoreci]

I really like to configure my system in every possible way. This repository
holds how I do it. If you are just starting out you could use mine (I don't
care or mind) but for your own sake read them. You probably don't like every
choice I made. Fork this repository and start to build your own. Or you could
probably just get ideas from it.

## Install

As you probably know, you shouldn't just run my Makefile without reading it
first. And if you read it, you will understand that it calls other scripts like
`install.sh` which depend on `helpers.sh`. Read those, it's the only way that
you can trust what it is doing.

Depending on your Linux distribution you should change the `distro.sh`
accordingly.

```shell
git clone https://github.com/nelsonmestevao/dotfiles ~/.dotfiles
git clone https://github.com/nelsonmestevao/spells   ~/.spells
cd ~/.dotfiles
make install
```

## Uninstall

```shell
cd ~/.dotfiles
make uninstall
cd ~
rm -rf ~/.dotfiles
rm -rf ~/.spells
```
