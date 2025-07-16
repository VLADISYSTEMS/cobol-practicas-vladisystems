       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMAR-NUMEROS.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> Variables para entrada y validación
       77 NUM1           PIC X(20).
       77 NUM-NUM        PIC 9(7)V99 VALUE 0.
       77 ENTRADA-VALIDA PIC X VALUE 'N'.

       *> Variables de presentación
       77 NUM-MOSTRAR    PIC ZZ,ZZZ,ZZ9.99.
       77 TOTAL-MOSTRAR  PIC ZZ,ZZZ,ZZ9.99.

       *> Variables de control
       77 RESPUESTA-USUARIO PIC X VALUE 'S'.
       77 TOTAL              PIC 9(9)V99 VALUE 0.

       PROCEDURE DIVISION.

       INICIO.
           DISPLAY "========================================="
           DISPLAY "      MÓDULO DE SUMA DE LA CALCULADORA"
           DISPLAY "========================================="

           PERFORM HASTA-QUE-DIGA-NO

           MOVE TOTAL TO TOTAL-MOSTRAR
           DISPLAY "-----------------------------------------"
           DISPLAY "✅ RESULTADO FINAL DE LA SUMA: " TOTAL-MOSTRAR
           DISPLAY "-----------------------------------------"

           DISPLAY "👋 Gracias por usar la calculadora COBOL."
           STOP RUN.

       HASTA-QUE-DIGA-NO.
           PERFORM UNTIL RESPUESTA-USUARIO NOT = 'S'
               PERFORM VALIDAR-ENTRADA

               IF RESPUESTA-USUARIO = 'N'
                   EXIT PERFORM
               END-IF

               ADD NUM-NUM TO TOTAL

               MOVE TOTAL TO TOTAL-MOSTRAR
               DISPLAY "💰 Total actual: " TOTAL-MOSTRAR
               DISPLAY "¿Desea ingresar otro número? (S/N): "
               ACCEPT RESPUESTA-USUARIO
               MOVE FUNCTION UPPER-CASE(RESPUESTA-USUARIO) 
                    TO RESPUESTA-USUARIO
           END-PERFORM.

       VALIDAR-ENTRADA.
           MOVE 'N' TO ENTRADA-VALIDA
           PERFORM UNTIL ENTRADA-VALIDA = 'S'
               DISPLAY "Ingrese un número (o 'X' para salir): "
               ACCEPT NUM1
               IF NUM1 = "X" OR NUM1 = "x"
                   MOVE 'N' TO RESPUESTA-USUARIO
                   DISPLAY "🚪 Saliendo del módulo..."
                   EXIT PARAGRAPH
               END-IF

               MOVE FUNCTION NUMVAL(NUM1) TO NUM-NUM

               IF NUM-NUM = 0 AND NUM1 NOT = "0" AND NUM1 NOT = "0.00"
                   DISPLAY "⚠ Entrada inválida. Intente de nuevo."
               ELSE
                   MOVE 'S' TO ENTRADA-VALIDA
               END-IF
           END-PERFORM

           MOVE NUM-NUM TO NUM-MOSTRAR
           DISPLAY "✅ Número aceptado: " NUM-MOSTRAR.

