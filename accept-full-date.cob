       IDENTIFICATION DIVISION.
       PROGRAM-ID. AcceptFullDate.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  FechaCompleta     PIC 9(8).  *> Formato: AAAAMMDD

       PROCEDURE DIVISION.
           ACCEPT FechaCompleta FROM DATE YYYYMMDD.
           DISPLAY "Fecha actual (YYYYMMDD): " FechaCompleta.
           STOP RUN.

