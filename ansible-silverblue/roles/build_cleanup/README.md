build_cleanup
=============

This may be a bit hackish for now, but I'm seeing if I can temporarily move some files at the end
of the build process so that they don't cause the build to fail. The files will be restored
after the host boots.

Requirements
------------

Modules used:

  * [ansible.builtin.yum_repository](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_repository_module.html)
  * [ansible.builtin.debug](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html)
  * [community.general.rpm_ostree_pkg](https://docs.ansible.com/ansible/latest/collections/community/general/rpm_ostree_pkg_module.html)
  * [community.general.dconf](https://docs.ansible.com/ansible/latest/collections/community/general/dconf_module.html)
  * [ansible.builtin.command](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/command_module.html)


Role Variables
--------------

TBD

Dependencies
------------

None

Example Adhoc Run
-----------------

`ansible-playbook -i hosts -l this_host -K roles/build_cleanup/playbook.yml`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: build_cleanup }

License
-------

BSD

Author Information
------------------

  * Jim Campbell (jwcampbell@gmail.com)
