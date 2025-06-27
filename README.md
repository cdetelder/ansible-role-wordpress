ansible-role-wordpress
=========

This role installs and configures Wordpress web site with a MariaDB database. 

How to use this role?
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Troubleshooting
--------------

If there is a problem with de database, connect and verify that the database and its tables exist.

```bash 
mysql -uroot -pexamplerootPW
show databases;
show tables from wordpress;
```

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yaml
---

- name: Deploy wordpress site
  hosts: all 

  roles:
    - ansible-role-wordpress
```

Proposition
-------

- Create two distincts roles : one for Debian systems, one for RedHat to avoid when conditions everywhere.
Examples : 
  - wordpress-debian
  - wordpress-redhat

- Remove database secrets 

Author Information
------------------

Camille DETELDER - M1 DO A