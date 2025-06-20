       IDENTIFICATION DIVISION.
       PROGRAM-ID. DiaSemanaEspanol.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumDia          PIC X(9). *> día en número (1=domingo 7=sábado).
       01 NombreDia       PIC X(10). *> nombre del día en español.

       PROCEDURE DIVISION.
           ACCEPT NumDia FROM DAY-OF-WEEK.
           EVALUATE NumDia
               WHEN 1
                   MOVE "Domingo" TO NumDia
               WHEN 2
                   MOVE "Lunes" TO NumDia
               WHEN 3
                   MOVE "Martes" TO NumDia
               WHEN 4
                   MOVE "Miercoles" TO NumDia
               WHEN 5
                   MOVE "Jueves" TO NumDia
               WHEN 6
                   MOVE "Viernes" TO NumDia
               WHEN 7
                   MOVE "Sábado" TO NumDia
               END-EVALUATE    
               DISPLAY "Hoy es :" NumDia
               STOP RUN.

