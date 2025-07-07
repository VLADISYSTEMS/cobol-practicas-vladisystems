       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALUDO-CIUDAD.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CIUDAD     PIC A(20).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese el nombre de su ciudad: "
           ACCEPT CIUDAD
           DISPLAY " "
           DISPLAY "¡Saludos desde " CIUDAD "!"
           STOP RUN.
