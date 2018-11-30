##############################################
## PRIMERO cd odoo11-locar
## COLOCAR sudo chmod +x *
## LUEGO   sudo ./yenthe-pre-adhoc-deps-odoo.sh
echo Instalando dependencias para una instalacion desde Script Yenthe666
echo
echo Cambiando de directorio...
cd ..
echo Modificando permisos de directorio: odoo11-locar a 777...
sudo chmod 777 odoo11-locar
echo Entrando al directorio...
cd odoo11-locar
echo Ejecutando comando como administrador sudo curl -sS https://bootstrap.pypa.io/get-pip.py >>setup.py...
sudo curl -sS https://bootstrap.pypa.io/get-pip.py >>setup.py
echo
echo Instalando dependencia DiskUtils para ejecutar instalacion de PIP...
sudo apt-get update
sudo apt-get install python3-distutils
echo
echo ##################################################
echo Instalando PIP...
echo ##################################################
echo
python3 setup.py
echo
echo ##################################################
echo Ejecutando: sudo add-apt-repositoy universe ...
echo ##################################################
echo
sudo add-apt-repository universe
echo
echo ##################################################
echo Ejecutando: sudo apt-get update ...
echo ##################################################
echo .
sudo apt-get update
echo .
echo #######################################
echo Ejecutando: sudo apt-get upgrade ...
echo ##################################################
echo .
sudo apt-get upgrade
echo .
echo ##################################################
echo Seccion de Instalacion de librerias Python3 (PIP3)
echo ##################################################
echo .
echo ##################################################
echo Instalando dependencias para pycups ...
echo sudo apt-get install libcups2-dev
echo ##################################################
echo .
sudo apt-get install libcups2-dev
echo .
echo ##################################################
echo Ejecutando: pip3 install pycups
echo ##################################################
echo .
pip3 install pycups
echo Instalando Genshi ...
pip3 install --user Genshi
echo comment sudo nano genshi
pip3 install --user git+https://github.com/adhoc-dev/aeroolib@master-fix-ods
pip3 install --user git+https://github.com/aeroo/currency2text.git
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



