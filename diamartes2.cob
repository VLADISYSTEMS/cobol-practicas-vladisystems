       IDENTIFICATION DIVISION.
       PROGRAM-ID. diamartes2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumDia     PIC 9.
       01 NombreDia  PIC X(10).

       PROCEDURE DIVISION.
           ACCEPT NumDia FROM DAY-OF-WEEK.

           EVALUATE NumDia
               WHEN 1
                   MOVE "Lunes"     TO NombreDia
               WHEN 2
                   MOVE "Martes"    TO NombreDia
               WHEN 3
                   MOVE "Miércoles" TO NombreDia
               WHEN 4
                   MOVE "Jueves"    TO NombreDia
               WHEN 5
                   MOVE "Viernes"   TO NombreDia
               WHEN 6
                   MOVE "Sábado"    TO NombreDia
               WHEN 7
                   MOVE "Domingo"   TO NombreDia
               WHEN OTHER
                   MOVE "Desconocido" TO NombreDia
           END-EVALUATE.

           DISPLAY "Hoy es: " NombreDia.
           STOP RUN.


           