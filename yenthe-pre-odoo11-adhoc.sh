##############################################
## PRIMERO cd odoo11-locar
## COLOCAR sudo chmod +x *
## LUEGO   sudo -E ./yenthe-pre-odoo11-adhoc
## deztino Pre-Odoo adhoc dependencyes
echo *********************************************************************************************************************
echo Instalando dependencias para una instalacion desde Script Yenthe666   -----  VERSION 0.4
echo *********************************************************************************************************************
echo Cambiando de directorio ...
echo cd ..
cd ..
echo Listo!
echo Modificando permisos de directorio: odoo11-locar a 777 ...
echo *********************************************************************************************************************
echo sudo chmod 777 odoo11-locar ...
sudo chmod 777 odoo11-locar
echo Listo!
echo Entrando al directorio ...
echo *********************************************************************************************************************
echo cd odoo11-locar
cd odoo11-locar
echo Listo!
echo Actualizando apt-get ...
echo *********************************************************************************************************************
echo sudo apt-get update ...
sudo apt-get update
echo Listo!
echo Instalando DistUtils -dependencia para instalar PIP- ...
echo *********************************************************************************************************************
echo sudo apt-get install python-distutils ...
sudo apt-get install python3-distutils
echo Listo!
echo Bajando PIP ...
echo *********************************************************************************************************************
echo sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py ...
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo Listo!
ls -ltr
echo *********************************************************************************************************************
echo Instalando PIP...
echo *********************************************************************************************************************
echo python3 setup.py ...
sudo -H python3 get-pip.py
echo Listo!
echo Agregando repositorio: universe ...
echo *********************************************************************************************************************
echo sudo add-apt-repository universe ...
sudo add-apt-repository universe
echo Listo!
echo Actualizando Apt-Get:
echo *********************************************************************************************************************
echo sudo apt-get update ...
sudo apt-get update
echo Listo!
echo Upgradeando Apt-Get a ultima version ...
echo *********************************************************************************************************************
echo sudo apt-get upgrade ...
sudo apt-get upgrade
echo Listo!
echo Instalación de librerias Python3 PIP3
echo *********************************************************************************************************************
echo Instalando dependencias para pycups ...
echo *********************************************************************************************************************
echo sudo apt-get install libcups2-dev ...
sudo apt-get install libcups2-dev
echo Listo!
echo sudo apt-get install cups ...
sudo apt-get install cups
echo Listo!
echo sudo apt-get install python3-dev ...
sudo apt-get install python3-dev
echo Listo!
echo Instalando pycups ...
echo pip3 install --user pycups ...
pip3 install --user pycups
echo Listo!
echo Instalando genshi ...
echo pip3 install --user Genshi ...
pip3 install --user Genshi
echo Listo!
echo NOW YOU SHOULD comment sudo nano genshi
echo pip3 install --user git+https://github.com/adhoc-dev/aeroolib@master-fix-ods ...
pip3 install --user git+https://github.com/adhoc-dev/aeroolib@master-fix-ods
echo Listo!
echo pip3 install --user git+https://github.com/aeroo/currency2text.git ...
pip3 install --user git+https://github.com/aeroo/currency2text.git
echo Listo!
pip3 install --user numpy
echo comment sudo nano sources/ingadhoc-website/requirements.txt numpy
pip3 install --user fdfgen
echo cooment sudo nano sources/reporting-engine/requirements.txt
echo Instalando zpl2, checksumdir, raven, pysftp, acme_tiny e IPy ...
pip3 install --user zpl2 checksumdir raven pysftp acme_tiny IPy
pip3 install --user pyopenssl
pip3 install --user httplib2==0.9.2
pip3 install --user pysimplesoap
pip3 install --user git+https://github.com/urbina05/pyafipws@patch-2
echo comment sudo nano git+https://github.com/urbina05/pyafipws@patch-2
pip3 install --user pygments
pip3 install --user dnspython
pip3 install --user email_validator
pip3 install --user schema
pip3 install --user lasso
pip3 install --user pyotp
pip3 install --user tornado
pip3 install --user bkcharts==0.2
pip3 install --user bokeh==0.12.7
pip3 install --user git+https://github.com/OCA/openupgradelib/@master
echo comment suda nano git+https://github.com/OCA/openupgradelib/@master



