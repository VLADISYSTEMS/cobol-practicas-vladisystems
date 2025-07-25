       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMOEX-ACCESS-RANDOM-CREAR-DAT.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "clientes.dat"
               ORGANIZATION IS RELATIVE
               ACCESS MODE IS RANDOM
               RELATIVE KEY IS RECNUM
               FILE STATUS IS FS.

       DATA DIVISION.
       FILE SECTION.
       FD  CLIENTES.
       01  REGISTRO-CLIENTE.
           05 NOMBRE     PIC X(30).
           05 TELEFONO   PIC X(10).

       WORKING-STORAGE SECTION.
       01 RECNUM         PIC 9(4).
       01 FS             PIC XX.
       01 OPCION         PIC X VALUE "S".

       PROCEDURE DIVISION.
       BEGIN.
           OPEN OUTPUT CLIENTES

           PERFORM UNTIL OPCION = "N"
               DISPLAY "Ingrese número de cliente (1-9999): "
               ACCEPT RECNUM

               DISPLAY "Ingrese nombre del cliente:"
               ACCEPT NOMBRE

               DISPLAY "Ingrese teléfono:"
               ACCEPT TELEFONO

               WRITE REGISTRO-CLIENTE INVALID KEY
                   DISPLAY "ERROR al grabar registro"
               END-WRITE

               DISPLAY "¿Desea agregar otro cliente? (S/N):"
               ACCEPT OPCION
               MOVE FUNCTION UPPER-CASE(OPCION) TO OPCION
           END-PERFORM

           CLOSE CLIENTES
           DISPLAY "Archivo RELATIVO clientes.dat creado."
           STOP RUN.

