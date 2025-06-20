       IDENTIFICATION DIVISION.
       PROGRAM-ID. DiaSemanaNumero.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  diasemana     PIC 9.      *> Número del 1 al 7

       PROCEDURE DIVISION.
           ACCEPT diasemana FROM DAY.
           DISPLAY "Día de la semana (1=Lunes, 7=Domingo): " DiaSemana.
           STOP RUN.


           