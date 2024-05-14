sudo nvim /etc/apt/sources.list

deb http://packages.mendix.com/platform/debian/ buster main contrib non-free

sudo wget -q -O - https://packages.mendix.com/mendix-debian-archive-key.asc | sudo apt-key add -
sudo apt-get update

sudo apt-get install debian-mendix-archive-keyring

sudo apt-get install m2ee-tools

sudo adduser --gecos "My First Application,,," myapp

su myapp

sudo mkdir -p /srv/mendix/myapp

cd /srv/mendix/myapp

sudo mkdir runtimes/ web/ model/ data/ data/database data/files data/model-upload data/tmp
sudo chown myapp:myapp * -R
sudo chmod 700 model/ data/
tree


cd /home/myapp
mkdir .m2ee

cp /usr/share/doc/m2ee-tools/examples/m2ee.yaml ~/.m2ee/

# copy mda file to /srv/mendix/myapp/data/model-upload/empty-4.1.0.mda
m2ee

m2ee(myapp): unpack empty-4.1.0.mda
m2ee(myapp): download_runtime
m2ee(myapp): start
m2ee(myapp): create_admin_user
m2ee(myapp): status


m2ee(myapp): help
m2ee(myapp): show_license_information
m2ee(myapp): activate_license
m2ee(myapp): quit