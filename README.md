# Marla OS 

[![build-marla-os](https://github.com/j1mc/marla-os/actions/workflows/build.yml/badge.svg)](https://github.com/j1mc/marla-os/actions/workflows/build.yml)

A base image with a (mostly) stock Fedora Silverblue. Taken from
[ublue-os/base](https://github.com/ublue-os/base), but renamed after one of my cats.

## Usage

Warning: This is not tip-top quality stuff at the moment. Use / experiment with it at your peril.

If you're okay with that, and you want to have fun with it yourself, though, you try it this way:

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/j1mc/marla-os:latest
    
If you want to rebase to a particular day's release:
  
    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/j1mc/marla-os:20221227 

The `latest` tag will automatically point to the latest build. 

## Features

- Start with a base Fedora Silverblue 37 image
- Removes Firefox from the base image
- Adds the following packages to the base image:
  - distrobox and gnome-tweaks
- Sets automatic staging of updates for the system
- Sets flatpaks to update twice a day
- Everything else (desktop, artwork, etc) remains stock so you can use this as a good starting image

## Applications

- All applications installed per user instead of system wide, similar to openSUSE MicroOS, they
  are not on the base image. Thanks for the inspiration Team Green!
- Mozilla Firefox, Mozilla Thunderbird, Extension Manager, Libreoffice, DejaDup, FontDownloader,
  Flatseal, and the Celluloid Media Player
- Core GNOME Applications installed from Flathub
- GNOME Calculator, Calendar, Characters, Connections, Contacts, Evince, Firmware, Logs, Maps,
  NautilusPreviewer, TextEditor, Weather, baobab, clocks, eog, and font-viewer.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You
can verify the signature by downloading the `cosign.pub` key from this repo and running the
following command:

    cosign verify --key cosign.pub ghcr.io/j1mc/marla-os
