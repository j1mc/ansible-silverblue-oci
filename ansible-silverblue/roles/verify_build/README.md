verify_build
============

Installs necessary public key and related files to verify the resulting OCI container image. This
will allow us to transition from using `ostree-unverified-registry` to `ostree-image-signed`
knowing that the image has been signed with the prescribed key.

Requirements
------------

Uses the following modules:

  * [ansible.builtin.file](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html)
  * [ansible.builtin.copy](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html)

Role Variables
--------------

None

Dependencies
------------

This role requires creation of a [Sigstore Cosign key](https://docs.sigstore.dev/key_management/signing_with_self-managed_keys/).

Example Adhoc Run
-----------------

`ansible-playbook -i hosts -l this_host -K roles/verify_build/playbook.yml`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: verify_build }

License
-------

BSD

Author Information
------------------

  * Jim Campbell (jwcampbell@gmail.com)
