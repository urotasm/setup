# Setup manifest

This is ansible playbook to configure basic environment.

# How to use it
## 1. Add inventory file
e.g.
```
$ cat inventory
[devservers]
localhost
```

## 2. Run
e.g.
```
# Run for the servers in inventory-file
$ ansible-playbook -i <inventory-file> -u <user> --key-file <key-file> <playbook>

# Run locally
$ ansible-playbook -i < inventory-file> -c local <playbook>
```

