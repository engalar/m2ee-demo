git clone https://github.com/mendix/m2ee-tools.git
cd m2ee-tools

sudo mkdir -p /var/log/m2ee/myapp
sudo chown -R myapp:myapp /var/log/m2ee/myapp
ll /var/log/m2ee

sudo apt-get install openjdk-11-jre-headless
sudo apt-get install python3-pip
sudo pip3 install .

nvim ~/.m2ee/m2ee.yaml

rm --recursive /srv/mendix/myapp/model/*
rm --recursive /srv/mendix/myapp/web/*

cp -r ../mendix-training/pluggable-widget/projects/TestProject/deployment/model /srv/mendix/myapp/

cp -r ../mendix-training/pluggable-widget/projects/TestProject/deployment/web /srv/mendix/myapp/

tree /srv/mendix/myapp/

python3 src/m2ee.py
