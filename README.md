# Do it!

```
curl -L https://raw.githubusercontent.com/bonnefoa/jumpbox-tools/master/bootstrap.sh | sh
```

## Available commands

### jr (jump role)
Connect and deploy jumpbox-tools to the first hostname of this role
Autocompletion is supported
```
jr mcnulty-query
```

### ji (jump instance)
Connect and deploy jumpbox-tools to the specified instance name or ip
Hostname autocompletion is supported
```
ji i-1234
```

### chosts_by_role (consul hosts by role)
Get the list of all instance with this role
```
chosts_by_role mcnulty-query
```

### chosts_by_role (consul ips by role)
Get the list of all ip with this role
```
cip_by_role mcnulty-query
```

### tmux.multi
Open a synchornised tmux on the 6 first instances with this role
```
.jumpbox-tools/tmux.multi -r mcnulty-query -m 6
```

Open a synchornised tmux on the 3 given instances
```
.jumpbox-tools/tmux.multi -d "i-0e7024e9fac36c16c i-0a65c0784df322ce6 i-0a11e73d23ea042b2"
```

## Caveat

Capistrano tasks like

```
cap kafka-cold:topic[points.multi]
```

will fail since zsh interpret `[]` as arguments.

To avoid this problem, prefix it with `noglob` or quote cap the command

```
cap "kafka-cold:topic[points.multi]"
```
