       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-ACCEPT-3-4.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-ARG-NUM              PIC 9(4).
       77 WS-ARG-VAL              PIC X(50).
       77 WS-ENV-VAR              PIC X(20) VALUE "HOME".
       77 WS-ENV-VAL              PIC X(80).
       77 WS-EXCEPTION-STATUS     PIC S9(4) COMP.
       77 WS-LINEAS               PIC 9(4).
       77 WS-COLUMNAS             PIC 9(4).
       77 WS-COMMAND-LINE         PIC X(100).
     

       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.

           DISPLAY "***** DEMOSTRACION INSTRUCCION ACCEPT *****"
           DISPLAY " "

           *> Lectura de una variable de entorno
           ACCEPT WS-ENV-VAL FROM ENVIRONMENT-VALUE WS-ENV-VAR
           DISPLAY "Valor de variable de entorno '" WS-ENV-VAR "': "
                   WS-ENV-VAL

 

           STOP RUN.
