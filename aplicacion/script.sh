#! /bin/sh
while ! mysql -u ${bookmedik_user} -p${bookmedik_passwd} -h ${host_database} -e ";" ; do
    echo "Esperando a que el servicio de mysql este disponible..."
    sleep 1
done

mysql -u $bookmedik_user --password=$bookmedik_passwd -h $host_database $db_name < /var/www/html/schema.sql
/usr/sbin/apache2ctl -D FOREGROUND
