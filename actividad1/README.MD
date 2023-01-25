# Actividad 1
## Tipos de kernel y sus diferencias
Podemos clasificar a los kernel en dos tipos principales: Los monolíticos y los modulares.

Los monoliticos son aquellos en que todas las funcionalidades están compiladas juntas en un único binario. Esto incluye a los controladores de hardware y los servicios de red. Todo esto se ejecuta en el espacio de direcciones del kernel y comparten un mismo espacio de memoria, un ejemplo de kernel monolítico es el de Windows y el de Linux.

Con los kernel modulares se emplean modulos, los cuales se cargan y descargan cuando sean necesarios, lo cual nos brinda una mayor flexibilidad y escalabilidad, ya que se permite el cambio de modulos sin necesidad de reiniciar el sistema. Un ejemplo de kernel modular es el de HURD.

Adicionalmente también existen otros tipos de kernel, como lo son los microkernel (Un kernel muy pequeño que solamente proporciona servicios básicos), los kernel hibridos (Que combinan caracteristicas de kernel monolítico y modulares) y los exokernels (Que proporcionan un conjunto minimo de servicios, el cual permite que los programas accedan directamente al hardware).

## User vs kernel mode

Se refiere a dos modos diferentes en que los procesos pueden utilizar los recursos del sistema.

En modo de usuario, los procesos tienen acceso limitado a un subconjunto de recursos del sistema, como la memoria y los dispositivos de entrada y salida. En este modo los procesos no pueden acceder directamente al hardware o a los recursos del kernel mismo, esto se hace con el fin de aislar al sistema de posibles fallos o errores en el proceso, ya que si un proceso falla en el modo de usuario no afectará al sistema en general.

En modo kernel se dispone acceso irrestricto a todas las partes del kernel, los procesos que tienen acceso a este modo por lo general son procesos del sistema en si, incluyendo controladores de dispositivos y recursos de red. Se recomienda que solamente se ejecuten procesos confiables en modo kernel porque cualquier fallo en este modo puede afectar la estabilidad del sistema en general.
