       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-ACCEPT-1-4.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-FECHA-YYYYMMDD       PIC 9(8).
       77 WS-DIA-YYYYDDD          PIC 9(7).
       77 WS-DIA-SEMANA           PIC 9(1).
       77 WS-HORA-HHMMSS          PIC 9(6).
     
       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.

           DISPLAY "***** DEMOSTRACION INSTRUCCION ACCEPT *****"
           DISPLAY " "

           *> Fecha actual formato AAAAMMDD
           ACCEPT WS-FECHA-YYYYMMDD FROM DATE YYYYMMDD
           DISPLAY "Fecha (YYYYMMDD): " WS-FECHA-YYYYMMDD

           *> Fecha actual formato AAAADDD (día juliano)
           ACCEPT WS-DIA-YYYYDDD FROM DAY YYYYDDD
           DISPLAY "Día (juliano YYYYDDD): " WS-DIA-YYYYDDD

           *> Día de la semana (1=domingo)
           ACCEPT WS-DIA-SEMANA FROM DAY-OF-WEEK
           DISPLAY "Día de la semana (1=domingo): " WS-DIA-SEMANA
           *> Advertencia: en GnuCOBOL puede devolver valores incorrectos. 
           *> Hoy es lunes, pero devuelve 1 (domingo).

           *> Hora actual
           ACCEPT WS-HORA-HHMMSS FROM TIME
           DISPLAY "Hora (HHMMSS): " WS-HORA-HHMMSS
           *> Advertencia: en GnuCOBOL bajo WSL/Ubuntu puede fallar.
           *> En lugar de 175200 (5:52 PM), devolvió 401067 (valor inválido).
           STOP RUN.
