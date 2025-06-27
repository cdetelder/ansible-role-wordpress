#!/bin/bash

sed -i "s/database_name_here/wordpress/" wp-config.php 
sed -i "s/username_here/example/" wp-config.php 
sed -i "s/password_here/examplePW/" wp-config.php 
sed -i "s/localhost/localhost/" wp-config.php 