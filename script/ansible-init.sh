#! /bin/sh

script_path=`dirname $0`

mkdir -p inventories
for dir in production staging develop
do
    bash ${script_path}/hosts-init.sh inventories/$dir
done

for file in site webservers dbservers
do
    touch ${file}.yml
done

touch ansible.cfg

bash ${script_path}/role-init.sh common
