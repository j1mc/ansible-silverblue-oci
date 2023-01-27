build_cleanup
=============

This may be a bit hackish for now, but I'm seeing if I can temporarily move some files at the end
of the build process so that they don't cause the build to fail. These files are then restored on firstboot.

Requirements
------------

Modules used:

  * [ansible.builtin.file](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html)
  * [ansible.builtin.copy](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html)
  * [ansible.builtin.systemd](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/systemd_module.html)

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
