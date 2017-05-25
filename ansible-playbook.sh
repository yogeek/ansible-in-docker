#!/bin/bash
docker run --rm -it --entrypoint ansible-playbook -v $(pwd):/app spansible "$@"