apt update && apt install libsqlite -y
cp libmonosgen-2.0.so $PREFIX/lib/.
chmod +x MCGLinux
echo "run with ./MCGLinux"
