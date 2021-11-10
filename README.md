Ansible role: crossplatform
=========

[![MIT licensed][mit-badge]][mit-link]

Description
------------

Example cross-platform ansible role that executes the echo command.

Requirements
------------

NOTE: Role requires Fact Gathering by ansible!

One of the following OS families:

- Debian
- RedHat
- Windows

Role Variables
--------------

`crossplatform_message` : Message to be printed

Dependencies
------------

None

Example Playbook
----------------

```yaml
- name: Test the role
  hosts: localhost
  roles:
    - ansible-role-crossplatform
```

To test:

```shell
ansible-playbook tests/test.yml -i tests/inventory
```

License
-------

[MIT][mit-link]

Author Information
------------------

donhector

[mit-badge]: https://img.shields.io/badge/license-MIT-blue.svg
[mit-link]: https://raw.githubusercontent.com/drew-kun/ansible-mpd/master/LICENSE
