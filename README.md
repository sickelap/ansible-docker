## Run ansible as docker container

### Build image

```
./build.sh
```

This will create docker image named ansible. Pass argument to the command to use your own name.

```
./build.sh ansible-2.7
```

### Use ansible

1) directly run docker image

```
docker run --rm -ti ansible ansible-playbook ....
```

2) set up aliases for all ansible-* commands

```bash
alias ansible-playbook='docker run --rm -ti ansible ansible-playbook'
alias ansible-vault='docker run --rm -ti ansible ansible-vault'
....
```

and use it as usual:

```
ansible-playbook ....
```
