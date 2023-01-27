# Ansible Silverblue OCI 

[![build-ansible-silverblue-oci](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml/badge.svg)](https://github.com/j1mc/ansible-silverblue-oci/actions/workflows/build.yml)

## Usage

Warning: This is not tip-top quality stuff at the moment. Use / experiment with it at your peril.

If you're okay with that, and you want to have fun with it yourself, though, you try it this way:

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:latest
    
If you want to rebase to a particular day's release:
  
    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/j1mc/ansible-silverblue-oci:20221227 

The `latest` tag will automatically point to the latest build. 

## What is this, exactly?

- We start with a base Fedora Silverblue 37 image
- We customize the OS via an included set of Ansible roles
- See the README inside of the 'ansible-silverblue' directory for the specific changes
- ... You can do this, too! All of the Ansible changes are handled via the `group_vars/all` file
  in the ansible portions of the project.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You
can verify the signature by downloading the `cosign.pub` key from this repo and running the
following command:

    cosign verify --key cosign.pub ghcr.io/j1mc/ansible-silverblue-oci

## Here Be Dragons

As I said up top, I won't claim that this is expert systems engineering. It's a new approach to
deploying a Linux desktop, though, and is worth some experimenting and fun. If you have any
suggestions on how things could be handled in a better fashion, please submit an issue.

## Credits

Many thanks to the folks doing work on [ublue-os/base](https://github.com/ublue-os/base). That
project was a big help in getting this started.

