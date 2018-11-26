echo =============================================
echo Taller de Odoo 002
echo Instalando localizacion Argentina
echo taller-de-odoo-.slack.com Modified by Deztino v0.4
echo =============================================
OE_USER="ubuntu"
OE_HOME="/$OE_USER"
OE_DBNAME="sanignaciosrl"
echo =============================================
echo Activando el entorno virtual de python3
echo =============================================
cd /home$OE_HOME/odoo/11
source bin/activate

echo =============================================
echo Clonando repositorios localizacion Argentina
echo =============================================
git clone https://github.com/OCA/maintainer-quality-tools.git
pip3 install --user M2Crypto
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
sudo apt-get install libcups2-dev
pip3 install --user pycups

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
sudo -u postgres dropdb $OE_DBNAME

echo =============================================
echo Generando odoo.conf nuevamente con los nuevos modulos
echo La lista de --addons-path= la generamos con el comando siguiente;
echo find /home$OE_HOME/odoo/11/sources/ -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','
echo =============================================
# Lista de es_BO, es_CL, es_PE, es_PY, es_UY, es_MX, es_VE
cd /home$OE_HOME/odoo/11/
odoo/odoo-bin -c odoo-localizacionargentina.conf -s --stop-after-init --db_host=localhost --db_user=$OE_USER --db_password=$OE_USER --addons-path=/home$OE_HOME/odoo/11/odoo/addons,/home/odoo/odoo/11/sources/account-closing,/home/odoo/odoo/11/sources/account-financial-tools,/home/odoo/odoo/11/sources/account-invoicing,/home/odoo/odoo/11/sources/account-payment,/home/odoo/odoo/11/sources/bank-payment,/home/odoo/odoo/11/sources/currency,/home/odoo/odoo/11/sources/hr-timesheet,/home/odoo/odoo/11/sources/ingadhoc-account-analytic,/home/odoo/odoo/11/sources/ingadhoc-account-financial-tools,/home/odoo/odoo/11/sources/ingadhoc-account-invoicing,/home/odoo/odoo/11/sources/ingadhoc-account-payment,/home/odoo/odoo/11/sources/ingadhoc-aeroo_reports,/home/odoo/odoo/11/sources/ingadhoc-argentina-reporting,/home/odoo/odoo/11/sources/ingadhoc-argentina-sale,/home/odoo/odoo/11/sources/ingadhoc-hr,/home/odoo/odoo/11/sources/ingadhoc-miscellaneous,/home/odoo/odoo/11/sources/ingadhoc-multi-company,/home/odoo/odoo/11/sources/ingadhoc-odoo-argentina,/home/odoo/odoo/11/sources/ingadhoc-partner,/home/odoo/odoo/11/sources/ingadhoc-patches,/home/odoo/odoo/11/sources/ingadhoc-payment,/home/odoo/odoo/11/sources/ingadhoc-product,/home/odoo/odoo/11/sources/ingadhoc-project,/home/odoo/odoo/11/sources/ingadhoc-purchase,/home/odoo/odoo/11/sources/ingadhoc-reporting-engine,/home/odoo/odoo/11/sources/ingadhoc-sale,/home/odoo/odoo/11/sources/ingadhoc-stock,/home/odoo/odoo/11/sources/ingadhoc-website,/home/odoo/odoo/11/sources/oca-purchase-workflow,/home/odoo/odoo/11/sources/oca-sale_workflow,/home/odoo/odoo/11/sources/oca-web,/home/odoo/odoo/11/sources/partner-contact,/home/odoo/odoo/11/sources/product-attribute,/home/odoo/odoo/11/sources/purchase-workflow,/home/odoo/odoo/11/sources/queue,/home/odoo/odoo/11/sources/reporting-engine,/home/odoo/odoo/11/sources/sale-workflow,/home/odoo/odoo/11/sources/server-auth,/home/odoo/odoo/11/sources/server-tools,/home/odoo/odoo/11/sources/server-ux,/home/odoo/odoo/11/sources/social,/home/odoo/odoo/11/sources/stock-logistics-workflow,/home/odoo/odoo/11/sources/web -d TALLERODOO_DB_11 --logfile=/home/odoo/odoo/11/odoo-tallerodoo.log --http-port=8069 --longpolling-port=8072 --http-interface=0.0.0.0 --data-dir=/home/odoo/odoo/11/datadir --load-language=es_AR

echo =============================================
echo Levantamos Odoo v11 Localizacion Argentina
echo =============================================
cd /home$OE_HOME/odoo/11/
odoo/odoo-bin -c odoo-localizacionargentina.conf &
