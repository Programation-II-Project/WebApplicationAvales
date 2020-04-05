# WebApplicationAvales
Repositorio para el desarrollo de una aplicación web para avales
Hola.

PARA VER DE FORMA ORDENADA EL ARCHIVO HAGAN CLIC EN EL ICONO DE EDITAR DEL ARCHIVO (UBICADA EN LA ESQUINA SUPERIOR DERECHA DE ESTE CUADRO)

El repositorio está hecho de tal manera que cada uno de nosotros tenga una branch personal conectada con la master, en dicha branch personal
cada quien subirá sus contribuciones con el respectivo commit que describa que hicieron, además, cada persona solo deberia tener permiso de
subir contenido a su propia branch, esto es algo que ya se limito en las configuraciones del repositorio.

Con el fin que todos podamos trabajar sin problemas de conflictos, utilizaremos la función rebase.

La función rebase se utiliza desde fork y consiste en tomar los elementos de una branch y pegarlos en otra. Así, cada vez que alguien comience
a trabajar en su branch deberá hacer un rebase desde la branch master ( o sea, copiar los elementos de la branch master hacia si branch personal
y posteriormente comenzar a trabajar). El rebase se debe hacer antes de comenzar a trabajr ya que necesitan tener los elementos actualizados del 
proyecto.

Pasos para hacer un rebase.
1- Con el repositorio clonado en Fork, habiendo hecho el fetch y los pull respectivos ( buscar el contenido en el remoto y descargarlo en su local)
    le hacemos un checkout a nuestra branch (darle doble clic y que aparezca un check en el nombre de la branch).
2- Ahora hacemos clic derecho sobre la branch Master y selecionamos la opción "Rebase <nombre de la branch> on master".
3- Aparecerá un cuadro de dialogo y, sin marcar la casilla de "Stash and Reapply local changes", damos clic en Rebase.
4- Generalmente, aparecerán las flechas sobre la branch que nos indican los archivos que hay que descargar (flecha apuntando hacia abajo)
    hacemos el pull para descargarlos.
    
Y listo, ya deberian estar acualizados para trabajar.

Instruccion generales en Fork:
    1-Al iniciar su trabajo siempre presionen el boton Fetch, marquen la casilla Fetch all remotes, y luego al boton fetch del cuadro         emergente
    2-Flecha hacia abajo sobre una branch, presionen pull
    3-Flecha hacia arriba sobre una branch, presione  push.

Nota: Por razones de seguridad solo está permitido que cada uno suba modificaciones a su propia branch.

Cualquier duda, escribanme.
Fernando Lozano
