rm MCGLinux MySql.Data.dll libmonosgen-2.0.so
apt update && apt install wget mono mono-static -y
wget https://cdn.classicube.net/client/mcg/release/MCGalaxy.zip
unzip MCGalaxy.zip && rm MCGalaxy.zip
mv linux_cfg MCGalaxy/.
cd MCGalaxy
mkbundle -o MCGLinux --simple MCGalaxyCLI.exe --machine-config $PREFIX/etc/mono/4.5/machine.config --config linux_cfg --library $PREFIX/lib/libMonoPosixHelper.so --library $PREFIX/lib/libmono-native.so --static
cp MCGLinux MySql.Data.dll ..
cd  ..
if [ "$1" = "install" ];then
cp $PREFIX/lib/libmonosgen-2.0.so .
rm	MCGalaxy -rf
apt purge mono mono-static -y && apt autoremove -y
bash install.sh
fi
