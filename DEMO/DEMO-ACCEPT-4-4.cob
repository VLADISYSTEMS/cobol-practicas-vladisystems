       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-ACCEPT-4-4.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-LINEAS               PIC 9(4).
       77 WS-COLUMNAS             PIC 9(4).
       77 WS-COMMAND-LINE         PIC X(100).

       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.

           DISPLAY "***** DEMOSTRACION INSTRUCCION ACCEPT *****"
           DISPLAY " "

           *> Lectura del comando con el que se ejecutó el programa
           ACCEPT WS-COMMAND-LINE FROM COMMAND-LINE
           DISPLAY "Comando usado: " WS-COMMAND-LINE

           *> Lectura de líneas y columnas de pantalla

                      *> Simulación de entrada del comando y dimensiones
           MOVE "demo-accept.cob" TO WS-COMMAND-LINE
           MOVE 24 TO WS-LINEAS
           MOVE 80 TO WS-COLUMNAS

           ACCEPT WS-LINEAS FROM LINES
           ACCEPT WS-COLUMNAS FROM COLUMNS
           DISPLAY "Tamaño pantalla - Líneas: " WS-LINEAS
           DISPLAY "Tamaño pantalla - Columnas: " WS-COLUMNAS

                     DISPLAY " "
           DISPLAY "***** FIN DEL PROGRAMA *****"

           STOP RUN.
