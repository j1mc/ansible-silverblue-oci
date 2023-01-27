#! /usr/bin/env/python3

import os
import shutil

os.system("rsync -avrz /etc/build_artifacts/flatpak/repo/config /var/lib/flatpak/repo/config")
os.system("rsync -avrz /etc/build_artifacts/flatpak/.changed /var/lib/flatpak/.changed")
os.system("rsync -avrz /etc/build_artifacts/roothome/.config /var/roothome/.config")
os.system("rsync -avrz /etc/build_artifacts/roothome/.local /var/roothome/.local")
os.system("rsync -avrz /etc/build_artifacts/roothome/.viminfo /var/roothome/.viminfo")

shutil.rmtree('/etc/build_artifacts')

os.system("echo 'The post rebase sync is complete.')
