#!/usr/bin/env sh

sudo pacman -Sy r

ln -sfT ~/.dotfiles/R/Rprofile ~/.Rprofile
ln -sfT ~/.dotfiles/R/Renviron ~/.Renviron

Rscript rpkgs.R

