echo Instalando dependencias para una instalacion desde Script Yenthe666
echo
echo Actualizando repositorios...
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get upgrade
echo Instalando librerias Python3 (PIP3)...
pip3 install pycups
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



