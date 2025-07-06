       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALUDO-NOMBRE-EDAD.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOMBRE        PIC A(30).
       01 EDAD          PIC 99.

       PROCEDURE DIVISION.
       DISPLAY "Introduce tu nombre:".
       ACCEPT NOMBRE.

       DISPLAY "Introduce tu edad:".
       ACCEPT EDAD.

       DISPLAY "Hola, " NOMBRE ", tienes " EDAD " años.".

       STOP RUN.
