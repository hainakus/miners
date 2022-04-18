#! /usr/bin/bash

DIR="LolMiner/1.48/"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Installing config files in ${DIR}..."
   curl -Ls -o lolminer.tar.gz -w %{url_effective} https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.48/lolMiner_v1.48_Lin64.tar.gz
  tar -C LolMiner/ -xzvf lolminer.tar.gz

  chmod +x LolMiner/1.48/mine_ergo.sh
  cd LolMiner/1.48/ && pwd
  ./mine_ergo.sh
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Can not continue."
  mkdir LolMiner
   curl -Ls -o lolminer.tar.gz -w %{url_effective} https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.48/lolMiner_v1.48_Lin64.tar.gz
   tar -C  LolMiner/ -xzvf lolminer.tar.gz

   chmod +x LolMiner/1.48/mine_ergo.sh
   cd LolMiner/1.48/ && pwd
   ./mine_ergo.sh
fi

