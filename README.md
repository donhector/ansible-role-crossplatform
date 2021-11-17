Ansible role: crossplatform
=========

[![MIT licensed][mit-badge]][mit-link]
[![Continuos Integration](https://github.com/donhector/ansible-role-crossplatform/actions/workflows/ci.yml/badge.svg)](https://github.com/donhector/ansible-role-crossplatform/actions/workflows/ci.yml)

Description
------------

Example of a dummy cross-platform Ansible role. The purpose of this repo was to:

- Illustrate handling OS specific vars and tasks in Ansible roles
- Illustrate how a role can be tested across platforms using Molecule
- Illustrate the use of some nice Github features:
  - Github Actions: To build a CI/CD pipelines for the role.
  - Bots: To manage vulnearble dependencies (ie. dependabot) and pull requests (ie. stale)
  - Issue Templates: To standarize community
- Illustrate the use of good software developement practices:
  - Virtual environments with pipenv
  - enforcing coding standards:
    - linters
    - editorconfig
    - pre-commit checks
  - use of Makefile to provide a common interface to usual tasks such as 'lint', 'test' and hide complexity for end users.

TODO:

- Commit message standarization and enforcement
- Changelog generation

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
