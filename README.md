# Ansible Silverblue OCI

[![build-ansible-silverblue-oci](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml/badge.svg)](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml)

This repository uses [ostree native container](https://coreos.github.io/rpm-ostree/container/)
tooling + Ansible to create a customized, bootable version of Fedora Silverblue. The customizations
are handled within the `ansible-silverblue` directory, and you're encouraged to read the
[README](ansible-silverblue/README.md) there to see exactly what this project does.

For now this project uses the Ansible version packaged by Fedora. You can view the current supported
Ansible version [here](https://packages.fedoraproject.org/pkgs/ansible/ansible/).

## What does all this mean, exactly?

- We start with a base Fedora Silverblue image (the specific Fedora version is set in the Containerfile
  and in the .github/workflows/build.yml file).
- We customize the OS via an included set of Ansible roles.
- We use [Github Actions](.github/workflows/build.yml) to build and sign a container image based on
  these customizations
- Enable you to then rebase your current Silverblue installation to use these customizations.

See the [README](ansible-silverblue/README.md) inside of the 'ansible-silverblue' directory for
the specific changes.

What's important is that you can do this, too! All of the Ansible changes are configured via the
`group_vars/all` file in the ansible portions of the project. Completely forking the project will
require that you modify a few things, but I can assist if you'd like to give this a try. Feel
free to leave a comment or inquiry as an 'Issue', and I'll be in touch with you.

## Usage

To rebase an fresh or existing Silverblue installation to use these customizations, run this command:

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:latest

If you want to rebase to a particular day's release:

    sudo rpm-ostree rebase  --experimental ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:20221227 

The `latest` tag will automatically point to the latest build. 

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You
can verify the signature by downloading the `cosign.pub` key from this repo and running the
following command:

    cosign verify --key cosign.pub ghcr.io/j1mc/ansible-silverblue-oci

## Credits

This project got its start around the same time that the [Universal Blue](https://github.com/ublue-os)
team were starting their efforts. We've taken some different approaches, and they're doing some great
work. Check them out!
