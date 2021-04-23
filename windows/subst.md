# subst

`subst` command can be used to assign a drive letter to a filesystem path. It is similar to `bind mounts` on Linux\Unix.

Using this command, a user can easily create virtual drives at any moment.

The number of virtual drives is limited to available drive letters.


## Creating a new Virtual Drive


### Assign a path to a virtual drive

Following commands assign the given path (`C:\Users\Ehsan\MyProjects`) to drive letter `X`:

```bat
rem Create a virtual drive (x) which points to given filesystem path
subst x: C:\Users\Ehsan\MyProjects
```


## Display currently active virtual drives

```bat
rem Display current virtual drives
subst
```


## Remove a Virtual Drive

```bat
rem Remove the virtual drive (x:)
subst x: /d
```