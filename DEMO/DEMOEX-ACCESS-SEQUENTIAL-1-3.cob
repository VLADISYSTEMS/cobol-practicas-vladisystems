       IDENTIFICATION DIVISION.            *> División obligatoria que identifica el programa.
       PROGRAM-ID. DEMOEX-ACCESS-SEQUENTIAL-1-3.  *> Nombre del programa; debe ser único.

       ENVIRONMENT DIVISION.              *> División donde se definen los dispositivos de entrada y salida.
       INPUT-OUTPUT SECTION.              *> Sección que declara cómo se manejan los archivos.
       FILE-CONTROL.                      *> Bloque que controla la definición del archivo a usar.
           SELECT ARCHIVO-CLIENTES ASSIGN TO "clientes.txt"
               *> Asocia el nombre lógico ARCHIVO-CLIENTES con el archivo físico "clientes.txt".
               ORGANIZATION IS LINE SEQUENTIAL
               *> Indica que el archivo está organizado por líneas, como un archivo de texto plano.
               ACCESS MODE IS SEQUENTIAL
               *> Se accederá a los registros uno tras otro, en orden.
               FILE STATUS IS ESTADO-FILE.
               *> Guarda el estado del archivo (por ejemplo, si hubo error al abrir o leer).

       DATA DIVISION.                     *> División donde se definen las estructuras de datos.
       FILE SECTION.                      *> Aquí se describe el contenido del archivo.
       FD  ARCHIVO-CLIENTES
           *> FD indica "File Description", es la cabecera que describe el archivo.
           RECORD CONTAINS 50 CHARACTERS
           *> Cada línea o registro del archivo contiene 50 caracteres como máximo.
           DATA RECORD IS REGISTRO-CLIENTE.
           *> El nombre de la variable donde se guarda cada línea leída es REGISTRO-CLIENTE.
       01  REGISTRO-CLIENTE     PIC X(50).
           *> Campo de texto de 50 caracteres, donde se almacena cada línea del archivo.

       WORKING-STORAGE SECTION.          *> Sección para declarar variables auxiliares del programa.
       77  ESTADO-FILE          PIC XX.
           *> Variable de 2 caracteres para guardar el estado del archivo (por ejemplo: "00" = OK).
       77  FIN-ARCHIVO          PIC X VALUE "N".
           *> Variable para controlar el final de archivo. Empieza en "N" (No).

       PROCEDURE DIVISION.               *> Aquí va la lógica del programa, el paso a paso.

       INICIO.                           *> Etiqueta de inicio del procedimiento principal.
           DISPLAY "== DEMO ACCESS SEQUENTIAL ==".
               *> Muestra un mensaje en pantalla indicando el inicio del programa.
           OPEN INPUT ARCHIVO-CLIENTES
               *> Abre el archivo en modo de lectura.

           PERFORM HASTA-FIN
               *> Ejecuta el bloque HASTA-FIN hasta que termine.

           CLOSE ARCHIVO-CLIENTES
               *> Cierra el archivo cuando ya no se necesita.

           DISPLAY "== FIN DEL PROGRAMA ==" 
               *> Muestra mensaje de cierre.

           STOP RUN.
               *> Finaliza el programa.

       HASTA-FIN.
           PERFORM UNTIL FIN-ARCHIVO = "S"
               *> Repite el bloque siguiente hasta que FIN-ARCHIVO sea "S" (Sí, fin de archivo).
               
               READ ARCHIVO-CLIENTES
                   *> Intenta leer la siguiente línea del archivo.
                   
                   AT END
                       MOVE "S" TO FIN-ARCHIVO
                           *> Si ya no hay más registros, cambia FIN-ARCHIVO a "S".
                   
                   NOT AT END
                       DISPLAY ">> Cliente: " REGISTRO-CLIENTE
                           *> Si se leyó una línea correctamente, la muestra en pantalla.
               END-READ
           END-PERFORM.
               *> Fin del ciclo PERFORM.

