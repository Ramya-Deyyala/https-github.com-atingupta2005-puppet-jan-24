## Setup R Studio
```
sudo apt -y update
sudo apt-get -y install r-base
```

```
sudo apt-get  -y install gdebi-core
```

```
wget https://download2.rstudio.org/server/focal/amd64/rstudio-server-2023.12.0-369-amd64.deb
```

```
sudo apt install -y ./rstudio-server-2023.12.0-369-amd64.deb
```

```
curl http://localhost:8787
```

## Setup Jupyter 
```
sudo apt install -y python3.9-venv python3-pip
```

```
sudo apt install -y python3.8-venv
```

```
sudo mkdir -p /pyenv
```

```
sudo chmod -R 777 /pyenv
```

```
python3 -m venv /pyenv
```

```
source /pyenv/bin/activate
```

```
cd /etc/puppetlabs/code
```

```
pip install jupyter
```

```
nohup jupyter notebook --ip 0.0.0.0 --port 8888  --allow-root  --NotebookApp.token='' --NotebookApp.password='' &
```

```
cat nohup.out | grep token
```
