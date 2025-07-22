       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-ACCEPT-2-4.

          DATA DIVISION.
       WORKING-STORAGE SECTION.
             77 WS-TEXTO-USER           PIC X(30).

       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.

           DISPLAY "***** DEMOSTRACION INSTRUCCION ACCEPT *****"
           DISPLAY " "

           *> Entrada simple de texto por consola
           DISPLAY "Ingrese su nombre: "
           ACCEPT WS-TEXTO-USER
           DISPLAY "Hola, " WS-TEXTO-USER

           DISPLAY " "
           DISPLAY "***** FIN DEL PROGRAMA *****"

           STOP RUN.
