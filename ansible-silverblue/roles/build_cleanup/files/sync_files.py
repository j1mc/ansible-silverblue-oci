#! /usr/bin/python

import os
import shutil

os.system("rsync -a /etc/build_artifacts/flatpak/repo/config /var/lib/flatpak/repo/config")
os.system("rsync -a /etc/build_artifacts/flatpak/.changed /var/lib/flatpak/.changed")
os.system("rsync -a /etc/build_artifacts/roothome/.config /var/roothome/.config")
os.system("rsync -a /etc/build_artifacts/roothome/.local /var/roothome/.local")
os.system("rsync -a /etc/build_artifacts/roothome/.viminfo /var/roothome/.viminfo")

shutil.rmtree('/etc/build_artifacts')

os.system("echo 'The post rebase sync is complete.'")

