echo =============================================
echo Instalacion de Odoo con VirtualEnv by deztino v1.2
echo =============================================
if [ "$(id -u)" = "0" ]; then
    echo "Lo siento, debe ejecutar el script sin SUDO"
    exit 1
fi
OE_USER="ubuntu"
OE_HOME="/$OE_USER"
OE_DBNAME="sanignaciosrl"
echo =============================================
echo Actualizando sistema
echo =============================================
sudo add-apt-repository universe
echo ~sudo apt-get update
sudo apt-get update
sudo apt-get upgrade
echo -Listo!
echo =============================================
echo Instalando VirtualEnv
echo =============================================
sudo apt-get install python3.6-dev python3.6-venv python3-pip python3-libxml2 libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libssl-dev swig wkhtmltopdf nodejs node-clean-css node-less 
echo -Listo!
echo =============================================
echo Instalando PostgreSQL
echo =============================================
sudo apt-get install -y postgresql postgresql-contrib
echo -Listo!
echo =============================================
echo Creamos ambiente y carpetas
echo =============================================
python3 -m venv /home$OE_HOME/odoo/11
echo -Listo!
echo Cambiamos de directorio
cd /home$OE_HOME/odoo/11
echo -Listo!
echo Activamos Ambiente
source bin/activate
echo -Listo!
echo =============================================
echo Actualizamos pip y setuptools
echo =============================================
pip3 install --upgrade pip
pip3 install --user --upgrade setuptools 
sudo -H pip3 install --user PyPDF2
sudo -H pip3 install --user werkzeug
sudo -H pip3 install --user python-dateutil
sudo -H pip3 install --user pytz
echo -Listo!
echo =============================================
echo Clonando e instalando ODOO 
echo =============================================
git clone --depth 1 --branch 11.0 --single-branch https://www.github.com/odoo/odoo
echo -Listo!
echo =============================================
echo Creando usuario Postgres
echo =============================================
sudo -u postgres psql -c "CREATE USER $OE_USER WITH PASSWORD '$OE_USER';"
sudo -u postgres psql -c "ALTER USER $OE_USER WITH PASSWORD '$OE_USER';"
sudo -u postgres psql -c "ALTER ROLE $OE_USER WITH CREATEDB;"
echo -Listo!
echo =============================================
echo Generando odoo.conf y Configurando
echo =============================================
echo Instalando requerimientos desde odoo/requirements.txt ...
pip3 install -r odoo/requirements.txt
pip3 install --user phonenumbers
pip3 install --user passlib
pip3 install --user babel
echo -Listo!
# Lista de es_BO, es_CL, es_PE, es_PY, es_UY, es_MX, es_VE
echo Ejecutando creacion del archivo de configuracion de Odoo11:
odoo/odoo-bin -c odoo.conf -s --stop-after-init --db_host=localhost --db_user=odoo --db_password=odoo --addons-path=/home$OE_HOME/odoo/11/odoo/addons -d $OE_DBNAME --logfile=/home$OE_HOME/odoo/11/odoo-$OE_DBNAME.log --http-port=8069 --longpolling-port=8072 --http-interface=0.0.0.0 --data-dir=/home$OE_HOME/odoo/11/datadir --load-language=es_AR
echo -Listo
echo =============================================
echo Levantamos Odoo v11 Localizacion Latinoamericana
echo =============================================
odoo/odoo-bin -c odoo.conf &
echo -Listo! Fin de Script.
