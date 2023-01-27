ansible-silverblue
==================

The Ansible here configures an OCI-formatted rpm-ostree installation. Think of it as running
Ansible within a container to provision and update your workstation / laptop operating system. Yeah, it's crazy.

Included Roles
--------------

The main parts of this project can be seen in the 'roles' directory. Each role included there
contains a README file that explains what the role is and how to use it. For starters, here is a
brief summary of each role:

  - flatpaks: Install desired [flatpak](https://flatpak.org/) applications.
  - layered_packages: Install or remove packages into / from the base rpm-ostree image.
  - gnome_settings: Set various GNOME desktop settings. The role makes these changes via
    [dconf](https://wiki.gnome.org/Projects/dconf).
  - google_cloud_sdk: Installs the Google Cloud SDK.
  - system_and_flatpak_updates: Configure the auto-update policy for OS updates and Flatpak
  packages on the host.
  - build_cleanup: Perhaps a bit of a hack. We need work around the inability to install files /
  make changes to anything on the `/var` filesystem. This is experimental, and I'm open to
  suggestions on how to handle this better.

Variables
---------

I've consolidated the project's variables into the `group_vars/all` file. This makes it easy to
update the project's variables from a single location. You should customize the values in that
file to set what changes get applied in the various roles.

Run the Playbooks
-----------------

You shouldn't need to run anything manually here. The ansible here gets triggered via the running
of the `Containerfile`.

If you want to understand how it all works, though, this command will run all of the included
playbooks:

`ansible-playbook -i hosts -l this_host -K -v playbook_base.yml`

If (for some odd reason) you want to run any of the roles individually, please review that role's
`README` file for the needed command.

License
-------

Unless otherwise indicated in the individual role, this project is under the BSD License.

Author
------

  * Jim Campbell (jwcampbell@gmail.com)
