       IDENTIFICATION DIVISION.
       PROGRAM-ID. EDAD-CALCULADA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ANO-ACTUAL         PIC 9(4).
       01 ANO-NACIMIENTO     PIC 9(4).
       01 EDAD               PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese el año actual: " WITH NO ADVANCING
           ACCEPT ANO-ACTUAL

           DISPLAY "Ingrese su año de nacimiento: " WITH NO ADVANCING
           ACCEPT ANO-NACIMIENTO

           COMPUTE EDAD = ANO-ACTUAL - ANO-NACIMIENTO

           DISPLAY "Su edad aproximada es: " EDAD

           STOP RUN.

           
