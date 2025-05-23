#!/bin/bash

# PocketBase indir (eğer yoksa)
if [ ! -f pocketbase ]; then
  curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.21.5/pocketbase_0.21.5_linux_amd64.zip -o pb.zip
  unzip pb.zip
  chmod +x pocketbase
fi

# Uygulamayı başlat
./pocketbase serve --http=0.0.0.0:10000 --dir pb_data --publicDir public
