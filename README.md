# Standalone MCGalaxy build for termux

## install prebuilt (64 bit ig)
doesnt take much space.

clone this repo.(needs git)

run install script:

```sh
bash install.sh
```

run the file with
```sh
./MCGLinux
```

## build on your own (any arch, probably)
takes  400 - 600 mb.

clone this repo.(needs git)

run build script and install script:

```sh
bash build.sh && bash install.sh
```

Here, I just fixed build step by changing the library names and not linking libraries that is nonexistent in mono's termux version

## License

just like the original, the mcgalaxy bin is gpl'ed 
libmonosgen-2.0.so is probably lgpl'ed

do wtf you want with the build scripts just give credit and don't use it for ai slop.

## reference

this page helped me a lot: [mcgalaxy wiki](https://github.com/ClassiCube/MCGalaxy/wiki/Standalone-builds-using-mkbundle)
