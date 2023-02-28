# Actividad 3

Después de analizar lo que sucedía con el contenedor del backend, se llegó a la conclusión de que el problema viene por una mala configuración del servidor de nginx.

Se notó la ausencia del archivo de configuración de nginx (nginx.conf), así que lo arreglamos y de paso se agregó la configuración que faltaba para que el servidor react pudiera funcionar de forma correcta.

    location / {
    try_files $uri $uri/ /index.html;
    }

Además de esto se modificó el dockerfile del servicio para que al momento de levantar la imagen se copie el archivo nginx.conf a la ubicación correcta y que se ejecute cuando se levante la imagen.

    EXPOSE 80
    COPY nginx.conf /etc/nginx/conf.d/default.conf
    CMD ["nginx", "-g", "daemon off;"]

Con esto ya quedó funcionando el sistema.