onepassword
===========

Install the 1password application and yum repository.

Requirements
------------

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

`ansible-playbook -i hosts -l this_host -K roles/onepassword/playbook.yml`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: onepassword }

License
-------

BSD

Author Information
------------------

  * Jim Campbell (jwcampbell@gmail.com)
