
# Disclaimer
At this point, this is just a working draft and in many ways not 
compatible with Ansible best practices.

# HOWTO
- Update ./inventory/testNodes.ini
    - User for now: root
    - Path to your private keys
- test hosts with


    ansible -i inventory/testNodes.ini debians -m ping
- If all hosts can be reached:


    ansible-playbook -i inventory/testNodes.ini cluster.yml
