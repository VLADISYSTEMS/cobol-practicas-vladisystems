       IDENTIFICATION DIVISION.
       PROGRAM-ID. CATEGORIA-DEPORTIVA.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *>----------------------------------------------------
       *> VARIABLES DE ENTRADA
       *>----------------------------------------------------
       77 EANO             PIC X(4).
       *>---------------------------------------------------
       *> VARIABLES DE VALIDACION
       *>----------------------------------------------------
       77 VAL-ANO          PIC 9(4).
       77 ENTRADA-VALIDA   PIC X(1).
       *>----------------------------------------------------
       *> VARIABLES DE CALCULO EDAD
       *>----------------------------------------------------
       77 CANO-ACTUAL       PIC 9(4).
       77 CANO-NACIMI       PIC 9(4).
       77 EDAD             PIC 9(2).

       *>----------------------------------------------------
       *> VARIABLES DE SALIDA
       *>----------------------------------------------------
       77 CATEGORIA        PIC X(20).
       77 SEDAD-ES         PIC Z9(2).
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Introduza el año actual :"
           PERFORM VALIDAR-ENTRADA
           MOVE VAL-ANO TO CANO-ACTUAL
           DISPLAY "Introduzca el año de su nacimiento:"
  ....     PERFORM VALIDAR-ENTRADA
  ....     MOVE VAL-ANO TO CANO-NACIMI
  ....     COMPUTE EDAD = CANO-ACTUAL - CANO-NACIMI
           MOVE EDAD TO SEDAD-ES
           DISPLAY "Su edad es :" SEDAD-ES
  ....     EVALUATE TRUE
                WHEN EDAD > 0 AND EDAD <  13
                     MOVE "Infantil" TO CATEGORIA
                WHEN EDAD > 12 AND EDAD < 18
                     MOVE "Juvenil" TO CATEGORIA
                WHEN EDAD > 17 AND EDAD < 40
                     MOVE "Adulto" TO CATEGORIA
                WHEN EDAD > 39 AND EDAD < 140
                     MOVE "Master" TO CATEGORIA
           END-EVALUATE
           DISPLAY "Categoria deportiva :" CATEGORIA
           STOP RUN.
       VALIDAR-ENTRADA.
           MOVE 'N' TO ENTRADA-VALIDA
           PERFORM UNTIL ENTRADA-VALIDA = 'S'
               ACCEPT EANO
               MOVE FUNCTION NUMVAL (EANO) TO VAL-ANO
               IF VAL-ANO = 0 AND EANO NOT = "0" AND EANO NOT = "0.00"
                  DISPLAY "Intente denuevo"
               ELSE
                       MOVE 'S' TO ENTRADA-VALIDA
               END-IF
           END-PERFORM.
