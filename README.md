# Ansible Silverblue OCI 

[![build-ansible-silverblue-oci](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml/badge.svg)](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml)

This repository uses [ostree native container](https://coreos.github.io/rpm-ostree/container/)
tooling + Ansible to create a customized, bootable version of Fedora Silverblue. The customizations
are handled within the `ansible-silverblue` directory, and you're encouraged to read the
[README](ansible-silverblue/README.md) there to see exactly what this project does.

## What does this mean, exactly?

- We start with a base Fedora Silverblue 37 image
- We customize the OS via an included set of Ansible roles
- We build and sign a container image based on these customizations
- Enable you to rebase your current Silverblue installation to use these customizations
- See the README inside of the 'ansible-silverblue' directory for the specific changes
- ... You can do this, too! All of the Ansible changes are configured via the `group_vars/all` file
  in the ansible portions of the project.

## Usage

To rebase an existing Silverblue installation to use these customizations, use these commands:

    sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:latest
    
If you want to rebase to a particular day's release:
  
    sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:20221227 

The `latest` tag will automatically point to the latest build. 

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You
can verify the signature by downloading the `cosign.pub` key from this repo and running the
following command:

    cosign verify --key cosign.pub ghcr.io/j1mc/ansible-silverblue-oci

## Credits

Many thanks to the folks doing work on [ublue-os/base](https://github.com/ublue-os/base). That
project was a big help in getting this started.
