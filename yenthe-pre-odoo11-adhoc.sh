##############################################
## PRIMERO cd odoo11-locar
## COLOCAR sudo chmod +x *
## LUEGO   sudo -E ./yenthe-pre-odoo11-adhoc
## deztino Pre-Odoo adhoc dependencyes
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo Instalando dependencias para una instalacion desde Script Yenthe666   -----  VERSION 1.0
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo Cambiando de directorio ...
echo ~cd ..
echo @@@@@@
cd ..
echo -Listo!
echo @@@@@@
echo _____________________________________________________________________________________________________________________
echo Modificando permisos de directorio: odoo11-locar a 777 ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo chmod 777 odoo11-locar ...
sudo chmod 777 odoo11-locar
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Entrando al directorio ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~cd odoo11-locar
cd odoo11-locar
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Actualizando apt-get ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo apt-get update ...
sudo apt-get update
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Instalando DistUtils -dependencia para instalar PIP- ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo apt-get install python-distutils ...
sudo apt-get install python3-distutils
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Bajando PIP ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py ...
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Listando directorio ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~ls -ltr
ls -ltr
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Instalando PIP...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~python3 setup.py ...
sudo -H python3 get-pip.py
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Agregando repositorio: universe ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo add-apt-repository universe ...
sudo add-apt-repository universe
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Actualizando Apt-Get:
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo apt-get update ...
sudo apt-get update
echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Upgradeando Apt-Get a ultima version ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo apt-get upgrade ...
echo /////////////////////////////// POSTERGADO /////////////////////////////////
#sudo apt-get upgrade
#echo -Listo!
echo _____________________________________________________________________________________________________________________
echo Inicio de instalación de librerias: Python3 PIP3
echo _____________________________________________________________________________________________________________________
echo Instalando dependencias para pycups ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo ~sudo apt-get install libcups2-dev ...
sudo apt-get install libcups2-dev
echo -Listo!
echo
echo ~sudo apt-get install cups ...
sudo apt-get install cups
echo -Listo!
echo ~sudo apt-get install python3-dev ...
sudo apt-get install python3-dev
echo -Listo!
echo
echo Instalando pycups ...
echo ~pip3 install --user pycups ...
pip3 install --user pycups
echo -Listo!
echo
echo Instalando genshi ...
echo ~pip3 install --user Genshi ...
pip3 install --user Genshi
echo -Listo!
echo
printf "\033[1;31mNOW YOU SHOULD comment sudo nano genshi\033[0m\n"
echo ~pip3 install --user git+https://github.com/adhoc-dev/aeroolib@master-fix-ods ...
pip3 install --user git+https://github.com/adhoc-dev/aeroolib@master-fix-ods
echo -Listo!
echo
echo pip3 install --user git+https://github.com/aeroo/currency2text.git ...
pip3 install --user git+https://github.com/aeroo/currency2text.git
echo -Listo!
echo
pip3 install --user numpy
printf "\033[1;31mcomment sudo nano sources/ingadhoc-website/requirements.txt numpy\033[0m\n"
pip3 install --user fdfgen
printf "\033[1;31mcomment sudo nano sources/reporting-engine/requirements.txt\033[0m\n"
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
echo Instalando módulo: bokeh V.0.12.7 ...
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo sudo -H pip3 install --user bokeh==0.12.7
sudo -H pip3 install --user bokeh==0.12.7
printf "\033[1;31m-Listo! --CHECK WARNINGS--\033[0m\n"
echo
pip3 install --user git+https://github.com/OCA/openupgradelib/@master
printf "\033[1;31mcomment: suda nano git+https://github.com/OCA/openupgradelib/@master\033[0m\n"
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo FIN - Dependencias para una instalacion desde Script Yenthe666   -----  VERSION 1.0 ----- TERMINADO
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
