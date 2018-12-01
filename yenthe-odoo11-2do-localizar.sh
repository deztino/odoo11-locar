## OJO !!! NO USAR SUDO PARA EJECUTAR !!
## TO RUN: sudo -H ./yenthe-odoo11-localizar.sh
echo ================= SCRIPT DE LOCALIZACION deztino V. 1.1 ============================
echo
echo 
echo
OE_USER="ubuntu"
OE_HOME="/$OE_USER"
OE_DBNAME="admin"
OE_ODOOPATH="/odoo/odoo-server"
echo =============================================
echo Clonando repositorios localizacion Argentina
echo =============================================
echo ~git clone https://github.com/OCA/maintainer-quality-tools.git
git clone https://github.com/OCA/maintainer-quality-tools.git
echo -Listo!
echo
echo ___________________________________________________________________________________________________________________
echo Instalando Dependencias para M2Crypto:
echo ___________________________________________________________________________________________________________________
echo ~sudo apt-get install build-essential python3-dev python-dev libssl-dev swig
sudo apt-get install build-essential python3-dev python-dev libssl-dev swig
echo -Listo!
echo
echo ___________________________________________________________________________________________________________________
echo Instalando M2Crypto ...
echo ___________________________________________________________________________________________________________________
echo ~sudo -H pip3 install --user M2Crypto
sudo -H pip3 install --user M2Crypto
echo -Listo!
echo
pip3 install --user httplib2
pip3 install --user checksumdir
pip3 install --user pysftp
pip3 install --user IPy
pip3 install --user lasso
pip3 install --user delorean
pip3 install --user schema
pip3 install --user humanize
pip3 install --user tzlocal
pip3 install --user bokeh
pip3 install --user PyYAML
pip3 install --user bkcharts
pip3 install --user tornado
pip3 install --user zpl2
echo ___________________________________________________________________________________________________________________
echo Instalar PySimpleSoap ...
echo ___________________________________________________________________________________________________________________
echo ~sudo -H pip3 install --user git+https://github.com/pysimplesoap/pysimplesoap@stable_py3k ...
sudo -H pip3 install --user git+https://github.com/pysimplesoap/pysimplesoap@stable_py3k
echo -Listo!
echo
echo ___________________________________________________________________________________________________________________
echo Instalando modulo: Request ...
echo ___________________________________________________________________________________________________________________
echo ~sudo -H pip3 install --user request
sudo -H pip3 install --user request
echo -Listo!
echo
echo ~sudo apt-get install libcups2-dev 
sudo apt-get install libcups2-dev
echo -Listo!
echo
echo ___________________________________________________________________________________________________________________
echo Instalando modulo: PyCups ...
echo ~pip3 install --user pycups
pip3 install --user pycups
echo Listo!
echo
echo ___________________________________________________________________________________________________________________
echo Instalando modulo: AerooLib ...
echo ~sudo -H pip3 install --user git+https://github.com/adhoc-dev/aeroolib.git
sudo -H pip3 install --user git+https://github.com/adhoc-dev/aeroolib.git
echo -Listo!
echo
echo Descargado archivo "oca_dependencies.txt"
echo ==============================================
echo ~wget https://github.com/ingadhoc/demo/raw/11.0/oca_dependencies.txt
wget https://github.com/ingadhoc/demo/raw/11.0/oca_dependencies.txt
echo -Listo!
echo
echo Editando archivo de texto "oca_dependencies.txt" ...
echo =============================================
sed -i 's/odoo-enterprise/#odoo-enterprise/g' ./oca_dependencies.txt
sed -i 's/ingadhoc-enterp/#ingadhoc-enterp/g' ./oca_dependencies.txt
sed -i 's/ingadhoc-adhoc-/#ingadhoc-adhoc-/g' ./oca_dependencies.txt
echo -Listo!
echo
echo Modificando archivo "clone_oca_dependencies": Cambiando v8.0 x 11.0
echo =============================================
echo ~sed -i 's/8.0/11.0/g' ./maintainer-quality-tools/travis/clone_oca_dependencies
sed -i 's/8.0/11.0/g' ./maintainer-quality-tools/travis/clone_oca_dependencies
echo -Listo!
echo
echo Modificando archivo "clone_oca_dependencies": Corrigiendo pip x pip3
echo =============================================
echo ~sed -i 's/command = ['pip/command = ['pip3/g' ./maintainer-quality-tools/travis/clone_oca_dependencies
echo sed -i 's/command = ['pip/command = ['pip3/g' ./maintainer-quality-tools/travis/clone_oca_dependencies
echo -Listo!
echo
echo Creando directorio "sources"
echo =============================================
echo ~mkdir sources
mkdir sources
echo -Listo!
echo
echo Ejecutando CLONACION
echo =============================================
echo ./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
echo -Listo!
echo
echo Borrando la DB, para generarla nuevamente
echo =============================================
echo Primero matamos Los procesos que se llamen -odoo-
sudo service odoo-server stop
echo ~sudo pkill -9 -f odoo
sudo pkill -9 -f odoo
echo -Listo!
echo
echo Ahora borramos la Base de Datos:
echo ~sudo -u postgres dropdb $OE_DBNAME
sudo -u postgres dropdb $OE_DBNAME
echo -Listo!
echo
echo Generamos la lista de --addons-path= con el comando siguiente:
echo =============================================
echo ~find /home$OE_HOME/odoo11-locar/sources/ -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','
find /home$OE_HOME/odoo11-locar/sources/ -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','
echo Agregado automático del PATH a la configuración de Odoo11-Yenthe /etc/odoo-server.conf
echo
#sudo -u postgres psql
#ALTER USER odoo WITH PASSWORD 'admin';
echo =============================================
echo Levantamos el Odoo v11 con Localizacion Argentina
echo =============================================
echo sudo service odoo-server restart
