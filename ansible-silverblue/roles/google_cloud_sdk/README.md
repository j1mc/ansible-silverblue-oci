google_cloud_sdk
================

Install the Yum repository (and the `gcloud` cli package) for the Google Cloud SDK.

Requirements
------------

Requires `python3-psutil`. This package is installed as a 'layered' package in the
`layered_packages` role.

Modules used:

  * [ansible.builtin.yum_repository](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_repository_module.html)
  * [community.general.rpm_ostree_pkg](https://docs.ansible.com/ansible/latest/collections/community/general/rpm_ostree_pkg_module.html)


Role Variables
--------------

TBD

Dependencies
------------

None

Example Adhoc Run
-----------------

`ansible-playbook -i hosts -l this_host -K roles/google_cloud_sdk/playbook.yml`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: google_cloud_sdk }

License
-------

BSD

Author Information
------------------

  * Jim Campbell (jwcampbell@gmail.com)
