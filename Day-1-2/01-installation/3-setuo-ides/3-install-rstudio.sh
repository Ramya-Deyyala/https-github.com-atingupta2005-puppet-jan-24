sudo apt -y update
sudo apt-get -y install r-base
sudo apt-get  -y install gdebi-core
wget https://download2.rstudio.org/server/focal/amd64/rstudio-server-2023.12.0-369-amd64.deb
sudo apt install -y ./rstudio-server-2023.12.0-369-amd64.deb
sudo rstudio-server stop
sudo rstudio-server start
curl http://localhost:8787
