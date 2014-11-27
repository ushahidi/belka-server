# belka-server

``/ˈbʲeɫ.kə ˈsɜr vər/``

A conveniently packaged set of caching proxy servers, supporting different package and file repository types.

These services come specially handy when developing Vagrant boxes, docker images, or any sort of fully pre-provisioned machine. A locally available cache with the necessary packages and files saves considerable time every time build scripts are modified and need to be re-run.

## Currently supported

* Apt repositories ( with [apt-cacher-ng](https://www.unix-ag.uni-kl.de/~bloch/acng/) )
* Pypi packages ( with [devpi](http://doc.devpi.net/latest/) )

## Dependencies

The set of dependencies to run the group of servers in your machine.

* docker ( http://docker.io )
* decking ( http://decking.io )

## How to run

```
$ decking build all
$ decking create
$ decking start
```

## Vagrant box

There are plans to provide a ready to run vagrant box, stay tuned.

## License

MIT
