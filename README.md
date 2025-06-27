ansible-role-wordpress
=========

This role installs and configures Wordpress web site with a MariaDB database. 

How to use this role?
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```
---

- name: Deploy wordpress site
  hosts: all 

  roles:
    - ansible-role-wordpress
```

Proposition
-------

Create two distincts roles : one for Debian systems, one for RedHat to avoid when conditions everywhere.
Examples : 
- wordpress-debian
- wordpress-redhat

Author Information
------------------

Camille DETELDER