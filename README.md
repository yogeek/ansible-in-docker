# Play with Ansible in Docker

Elements to run ansible from within a docker image 

## Build docker image

```
cd dockerfile
docker build -t dockansible .
cd -
```

## Requirements

* SSH key must be placed in 'ssh' directory
* inventory.ini must be filled with your hosts inventory

## Run Ansible 'ad-hoc' command (ex: ping on all hosts)

```
./ansible.sh -i /app/inventory.ini -m ping all
```

## Run Ansible playbook (ex: ping-playbook.yml)

```
./ansible-playbook.sh -i /app/inventory.ini /app/ping-playbook.yml
```
