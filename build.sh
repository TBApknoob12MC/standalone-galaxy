rm MCGLinux libmonosgen-2.0.so
apt update && apt install wget mono mono-static -y
wget https://cdn.classicube.net/client/mcg/release/MCGalaxy.zip
unzip MCGalaxy.zip && rm MCGalaxy.zip
mv linux_cfg MCGalaxy/.
cp bld.sh MCGalaxy/.
cd MCGalaxy
bash bld.sh
cp MCGLinux .. 
cd ..
if [ "$1" = "install" ];then
cp $PREFIX/lib/libmonosgen-2.0.so .
rm	MCGalaxy -rf
apt purge mono mono-static -y && apt autoremove -y
bash install.sh
fi
