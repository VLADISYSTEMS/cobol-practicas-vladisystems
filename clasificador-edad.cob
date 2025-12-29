       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLASIFICADOR-EDAD.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EDAD          PIC 99.
       01 CATEGORIA     PIC X(20).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese su edad: ".
           ACCEPT EDAD.

           IF EDAD < 13
             MOVE "Niño" TO CATEGORIA
           ELSE IF EDAD < 18
             MOVE "Adolescente" TO CATEGORIA
           ELSE IF EDAD < 60
             MOVE "Adulto" TO CATEGORIA
           ELSE
             MOVE "Adulto Mayor" TO CATEGORIA
           END-IF.

           DISPLAY "Usted es: " CATEGORIA.
           STOP RUN.

           



