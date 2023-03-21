# Actividad 4

Primeramente necesitamos crear el script que contendrá lo que queremos mostrar, el contenido del script (actividad4.sh) es el siguiente:

    #!/bin/bash

    echo "Hola desde el script, la fecha actual es: $(date +%Y-%m-%d)"

Luego le damos permisos de ejecución, eso se logra con el comando:

    chmod +x actividad4.sh

Creamos el archivo del servicio con el comando:

    sudo nano /etc/systemd/system/actividad4.service

El archivo contendrá el siguiente código:

    [Unit]
    Description=Sistemas Operativos 1 - Actividad 4 

    [Service]
    Type=simple
    ExecStart=/home/edwin/actividad4.sh

    [Install]
    WantedBy=multi-user.target  

Luego ejecutaremos los siguientes comandos para poder habilitar nuestro servicio:

    sudo systemctl daemon-reload   
    sudo systemctl start actividad4.service   

Por último, verificamos el estado de nuestro servicio usando:

    sudo systemctl status actividad4.service    