# SSH protect

Este script pretender ser una alternativa sencilla basada en bash a Fail2Ban.py, en sus entrañas usa AWK para leer los intentos fallidos de acceso al servidor SSH desde el el archivo /var/log/auth.log y UFW y para bloquear a la IP que falle cierta cantidad de veces, pudiendo configurar este parámetro dentro del script `sshprotect`.

Para instalarlo recuerda satisfacer las dependencias `gawk` y `ufw`, este último debe de estar habilitado y funcionando. No dejes de revisar el contenido de el script `install.sh` y de los mensajes que se imprimen en consola. Luego de instalar deberás habilitar el servicio en el sistema e iniciarlo.

# Contribuir
Si quieres echarnos una mano haz un fork del repositorio y somete un pull-request, estaremos encantados de revisarlo e incorporarlo. Podemos darte soporte en nuestro grupo de Telegram [SalamandraDevs](https://t.me/salamandradevs).
