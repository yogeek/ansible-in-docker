# ansible-role-docker-ce

Installs Docker CE (Community Edition) on CentOS.

## Requirements

No additional requirements.


## Role Variables

Variables related to this role are listed below:

```yaml
# Define below variable to configure Docker daemon: https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-configuration-file 
# Example:
# docker_daemon_config:
#   experimental: true

# If below variable is set to true it will remove older Docker installation before Docker CE.
docker_remove_pre_ce: false
```

## Dependencies

None.

## Example Playbook using this role

    - hosts: localhost
      roles:
         - role: docker-ce


