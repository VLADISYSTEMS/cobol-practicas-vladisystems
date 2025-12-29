               IDENTIFICATION DIVISION. 
               PROGRAM-ID. diasemanaingles.

               DATA DIVISION.
               WORKING-STORAGE SECTION. 
               01 diasemana       PIC X(9). *> MONDAY TUESDAY ETC.

               PROCEDURE DIVISION.
                   ACCEPT diasemana FROM DAY-OF-WEEK.
                   DISPLAY "Hoy es (inglés)" diasemana.
                   STOP RUN.


