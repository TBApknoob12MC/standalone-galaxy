rm MCGLinux
mkbundle -o MCGLinux --simple MCGalaxyCLI.exe --machine-config $PREFIX/etc/mono/4.5/machine.config --config linux_cfg --library $PREFIX/lib/libMonoPosixHelper.so --library $PREFIX/lib/libmono-native.so --static
