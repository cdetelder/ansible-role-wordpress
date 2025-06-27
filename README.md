ansible-role-wordpress
=========

This role installs and configures Wordpress web site with a MariaDB database. 

How to use this role?
----------------
Install from ansible galaxy :
```bash
ansible-galaxy role install cdetelder.ansible-role-wordpress
```

Call it in a playbook : 


```yaml
---

- name: Deploy wordpress site
  hosts: all 

  roles:
    - ansible-role-wordpress
```

Axis of improvement
-------

This Ansible role isn't entirely finished, here some ideas to improve it :

### OS compatibility
This role works only on Debian, the configuration for rocky linux doesn't work yet.

### Ansible roles
Create two distincts roles : one for Debian systems, one for RedHat to avoid `when` conditions everywhere.

Examples : 
  - wordpress-debian
  - wordpress-redhat

### Secrets
Remove database secrets from the playbook and store in HashiCorp Vault or Ansible Vault.

Configuration
------------

List of package installed on clients: 
- apache2 (httpd for Rocky)
- php 
- libapache2-mod-php 
- php-mysql 
- mariadb-server 
- wget 
- unzip 

### Database infos 
database name: wordpress

database user: root 

Handlers
------------------
Working handler : "Reload apache2 service on Debian Family" trigged when apache2 config files are changed.

Troubleshooting
--------------
### Apache2

Logs are available at /var/log/apache2/.


### MariaDB database
If there is a problem with de database, connect and verify that the database and its tables exist.

```bash 
mysql -uroot -pexamplerootPW
show databases;
show tables from wordpress;
```

Author Information
------------------

Camille DETELDER - M1 DO A