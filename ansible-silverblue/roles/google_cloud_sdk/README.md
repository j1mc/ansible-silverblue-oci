google_cloud_sdk
================

Install the Yum repository (and the `gcloud` cli package) for the Google Cloud SDK.

Requirements
------------

Requires `python3-psutil`. This package is installed as a 'layered' package in the
`layered_packages` role.

Modules used:

  * [ansible.builtin.yum_repository](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_repository_module.html)
  * [ansible.builtin.debug](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html)
  * [community.general.rpm_ostree_pkg](https://docs.ansible.com/ansible/latest/collections/community/general/rpm_ostree_pkg_module.html)
  * [community.general.dconf](https://docs.ansible.com/ansible/latest/collections/community/general/dconf_module.html)
  * [ansible.builtin.command](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/command_module.html)


Role Variables
--------------

These varables are set in the project's `group_vars/all` file. Make your edits there!

  * dconf_settings: These settings consist of a `dconf key` and the key's associated `value`.

You can identify other settings you may want to use by entering `dconf watch /` in a terminal,
and then making your desired changes. As you make changes, any dconf value changes will be
reflected in the terminal output.

Dependencies
------------

None

Example Adhoc Run
-----------------

`ansible-playbook -i hosts -l this_host -K roles/gnome_settings/playbook.yml`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: gnome_settings }

License
-------

BSD

Author Information
------------------

  * Jim Campbell (jwcampbell@gmail.com)
