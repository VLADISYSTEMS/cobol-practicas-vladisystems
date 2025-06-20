       IDENTIFICATION DIVISION.
       PROGRAM-ID. AcceptDate.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Hoy         PIC 9(6).  *> formato: YYMMDD

       PROCEDURE DIVISION.
           ACCEPT Hoy FROM DATE.
           DISPLAY "Fecha actual (YYMMDD): " Hoy.
           STOP RUN.

           