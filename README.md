Ansible role: crossplatform
=========

[![Ansible Galaxy role badge][galaxy-role-badge]][galaxy-link]
[![Ansible Galaxy quality badge][galaxy-quality-badge]][galaxy-link]
[![CI badge][ci-badge]][ci-link]
[![MIT licensed][mit-badge]][mit-link]
![Python version][python-badge]
[![pre-commit badge][pre-commit-badge]][pre-commit-link]
[![Commitizen friendly][commitizen-badge]][commitizen-link]

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
  - Commit message standarization and enforcement (ie: conventional commits via commitizen and pre-commit validations)
  - Automated changelog and semver generation based on conventional commits (currently this repo uses the builtin release changelog from Github)

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
[galaxy-role-badge]: https://img.shields.io/ansible/role/56942?color=purple&label=galaxy&logo=ansible
[galaxy-quality-badge]: https://img.shields.io/ansible/quality/56942
[galaxy-link]: https://galaxy.ansible.com/donhector/crossplatform
[ci-badge]: https://github.com/donhector/ansible-role-crossplatform/actions/workflows/ci.yml/badge.svg
[ci-link]: https://github.com/donhector/ansible-role-crossplatform/actions/workflows/ci.yml
[pre-commit-link]: https://github.com/pre-commit/pre-commit
[pre-commit-badge]: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white
[python-badge]: https://img.shields.io/github/pipenv/locked/python-version/donhector/ansible-role-crossplatform?color=green
[commitizen-badge]: https://img.shields.io/badge/commitizen-friendly-brightgreen.svg
[commitizen-link]: http://commitizen.github.io/cz-cli

