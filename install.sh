#!/bin/bash
echo "Instalando SSH Protect en su sistema ..."
echo "(Requiere permisos de super usuario)"
cp ./sshprotect.service /etc/systemd/system/
chmod u+x ./sshprotect
cp ./sshprotect /usr/local/bin/
mkdir /usr/local/share/sshprotect/; cp ./block-ssh-attempts.awk /usr/local/share/sshprotect/
echo "Ahora habilite sshprotect con: sudo systemctl enable sshprotect.service; sudo systemctl start sshprotect.service"
