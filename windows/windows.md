# Windows

## General

### Find out a system's boot-up date/time

* Using `systeminfo` command

```cmd
systeminfo | find /i "Boot Time"

```

* Using `wmic`

```cmd
wmic os get lastbootuptime
```

* Using `net` command

```cmd
net statistics workstation
```

###  Find Windows installation date

```cmd
systeminfo | grep -i original
```