# TO RUN: sudo -H ./yenthe-odoo11-localizar.sh
echo =============================================
echo Taller de Odoo 002
echo Instalando localizacion Argentina
echo taller-de-odoo-.slack.com Modified by Deztino v0.6
echo =============================================
OE_USER="ubuntu"
OE_HOME="/$OE_USER"
OE_DBNAME="admin"
OE_ODOOPATH="/odoo/odoo-server"
echo =============================================
echo Clonando repositorios localizacion Argentina
echo =============================================
git clone https://github.com/OCA/maintainer-quality-tools.git
echo Dependencias para M2Crypto:
echo sudo apt-get install build-essential python3-dev python-dev libssl-dev swig ...
sudo apt-get install build-essential python3-dev python-dev libssl-dev swig
echo Listo!
echo M2Crypto ...
sudo -H pip3 install --user M2Crypto
echo Listo!
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
echo Instalar PySimpleSoap
echo sudo -H pip3 install --user git+https://github.com/pysimplesoap/pysimplesoap@stable_py3k ...
sudo -H pip3 install --user git+https://github.com/pysimplesoap/pysimplesoap@stable_py3k
echo Listo!
echo Instalar modulo: Request
sudo -H pip3 install --user request
echo Listo!
sudo apt-get install libcups2-dev
echo Instalar PyCups
pip3 install --user pycups
echo Listo!
echo =============================================
echo Clonando repositorios localizacion Argentina
echo ==============================================
wget https://github.com/ingadhoc/demo/raw/11.0/oca_dependencies.txt
sed -i 's/odoo-enterprise/#odoo-enterprise/g' ./oca_dependencies.txt
sed -i 's/ingadhoc-enterp/#ingadhoc-enterp/g' ./oca_dependencies.txt
sed -i 's/ingadhoc-adhoc-/#ingadhoc-adhoc-/g' ./oca_dependencies.txt

echo =============================================
echo Modificando la version de Odoo a clonar
echo =============================================
sed -i 's/8.0/11.0/g' ./maintainer-quality-tools/travis/clone_oca_dependencies

echo =============================================
echo Bajando los modulos y sus dependencias
echo =============================================
mkdir sources
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .

echo =============================================
echo Borrando la DB, para generarla nuevamente
echo =============================================
#Delete db
#sudo -u postgres dropdb $OE_DBNAME

echo =============================================
echo Generando odoo.conf nuevamente con los nuevos modulos
echo La lista de --addons-path= la generamos con el comando siguiente;
echo find /home$OE_HOME/odoo11-locar/sources/ -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','
echo =============================================
# Lista de es_BO, es_CL, es_PE, es_PY, es_UY, es_MX, es_VE
## MANUALLY ADD PATH TO CONFIG /etc/odoo-server.conf
#$OE_ODOOTPATH/odoo-bin -c odoo-$OE_DBNAME.conf -s --stop-after-init --db_host=localhost --db_user=$OE_USER --db_password=$OE_USER --addons-path=/odoo/odoo-server/addons,/odoo/custom/addons,/home/ubuntu/odoo11-locar/sources/account-closing,/home/ubuntu/odoo11-locar/sources/account-financial-tools,/home/ubuntu/odoo11-locar/sources/account-invoicing,/home/ubuntu/odoo11-locar/sources/account-payment,/home/ubuntu/odoo11-locar/sources/bank-payment,/home/ubuntu/odoo11-locar/sources/currency,/home/ubuntu/odoo11-locar/sources/hr-timesheet,/home/ubuntu/odoo11-locar/sources/ingadhoc-account-analytic,/home/ubuntu/odoo11-locar/sources/ingadhoc-account-financial-tools,/home/ubuntu/odoo11-locar/sources/ingadhoc-account-invoicing,/home/ubuntu/odoo11-locar/sources/ingadhoc-account-payment,/home/ubuntu/odoo11-locar/sources/ingadhoc-aeroo_reports,/home/ubuntu/odoo11-locar/sources/ingadhoc-argentina-reporting,/home/ubuntu/odoo11-locar/sources/ingadhoc-argentina-sale,/home/ubuntu/odoo11-locar/sources/ingadhoc-hr,/home/ubuntu/odoo11-locar/sources/ingadhoc-miscellaneous,/home/ubuntu/odoo11-locar/sources/ingadhoc-multi-company,/home/ubuntu/odoo11-locar/sources/ingadhoc-odoo-argentina,/home/ubuntu/odoo11-locar/sources/ingadhoc-partner,/home/ubuntu/odoo11-locar/sources/ingadhoc-patches,/home/ubuntu/odoo11-locar/sources/ingadhoc-payment,/home/ubuntu/odoo11-locar/sources/ingadhoc-product,/home/ubuntu/odoo11-locar/sources/ingadhoc-project,/home/ubuntu/odoo11-locar/sources/ingadhoc-purchase,/home/ubuntu/odoo11-locar/sources/ingadhoc-reporting-engine,/home/ubuntu/odoo11-locar/sources/ingadhoc-sale,/home/ubuntu/odoo11-locar/sources/ingadhoc-stock,/home/ubuntu/odoo11-locar/sources/ingadhoc-website,/home/ubuntu/odoo11-locar/sources/oca-purchase-workflow,/home/ubuntu/odoo11-locar/sources/oca-report-print-send,/home/ubuntu/odoo11-locar/sources/oca-sale_workflow,/home/ubuntu/odoo11-locar/sources/oca-web,/home/ubuntu/odoo11-locar/sources/odoo-support,/home/ubuntu/odoo11-locar/sources/partner-contact,/home/ubuntu/odoo11-locar/sources/product-attribute,/home/ubuntu/odoo11-locar/sources/purchase-workflow,/home/ubuntu/odoo11-locar/sources/queue,/home/ubuntu/odoo11-locar/sources/reporting-engine,/home/ubuntu/odoo11-locar/sources/sale-workflow,/home/ubuntu/odoo11-locar/sources/server-auth,/home/ubuntu/odoo11-locar/sources/server-tools,/home/ubuntu/odoo11-locar/sources/server-ux,/home/ubuntu/odoo11-locar/sources/social,/home/ubuntu/odoo11-locar/sources/stock-logistics-workflow,/home/ubuntu/odoo11-locar/sources/web -d $OE_DBNAME --logfile=$OE_ODOOPATH/odoo-$OE_DBNAME.log --http-port=8069 --longpolling-port=8072 --http-interface=0.0.0.0 --data-dir=$OE_ODOOPATH/datadir --load-language=es_AR

#to change db pass:
#sudo -u postgres psql
#ALTER USER odoo WITH PASSWORD 'admin';
echo =============================================
echo Levantamos Odoo v11 Localizacion Argentina
echo =============================================

#odoo/odoo-bin -c odoo-$OE_DBNAME.conf &
