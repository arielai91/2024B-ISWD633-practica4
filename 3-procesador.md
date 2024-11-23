# Limitar uso de procesador

Limitar la cantidad de núcleos de CPU:

```
--cpus=<número de núcleos>
```

Asignar núcleos de CPU específicos:

```
--cpuset-cpus=<lista de núcleos>
```

**¿Como saber el numero de procesadores virtuales que tiene una máquina?**

se puede poner el siguiente comando ```lscpu``` para visualizar cuantos procesadores tengo en mi maquina

en este caso estoy trabajando en un workspace de 16 nucleos de github.

## Ejemplos

_Puedes copiar y ejecutar directamente cada uno de los comandos_

Limitar el uso de CPU a 1.5 núcleos

```
docker run -d --name server-nginx --cpus="1.5" nginx:alpine
```

Restringir el contenedor para que use los núcleos de CPU 0 a 2:

```
docker run -d --name server-nginx --cpuset-cpus="0-2" nginx:alpine
```

Restringir el contenedor para que use los núcleos de CPU 1 y 3:

```
docker run -d --name server-nginx --cpuset-cpus="1,3" nginx:alpine
```
