#!/bin/bash

# PocketBase'i indir (Linux 64-bit için)
curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.21.5/pocketbase_0.21.5_linux_amd64.zip -o pb.zip

# Zip'i aç
unzip pb.zip
chmod +x pocketbase

# Uygulamayı başlat
./pocketbase serve --http=0.0.0.0:10000 --dir pb_data --publicDir public
