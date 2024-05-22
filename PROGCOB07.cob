       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER DUAS NOTAS
      *     IMPRIMIR STATUS
      *     UTILIZAR COMANDOS IF ELSE
      * DATA = 21/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1    PIC 9(02)V9 VALUE ZEROS.
       77 WRK-NOTA2    PIC 9(02)V9 VALUE ZEROS.
       77 WRK-MD       PIC 9(03)V99 VALUE ZEROS.
       77 WRK-MD-ED    PIC Z9,9 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'ENTRE COM A NOTA 1: '
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY 'ENTRE COM A NOTA 2: '
           ACCEPT WRK-NOTA2 FROM CONSOLE
      ****************MOSTRA DADOS
               IF WRK-MD >= 6
                   DISPLAY 'APROVADO'
               ELSE
                       IF WRK-MD >= 2
                           DISPLAY 'RECUPERACAO'
                       ELSE
                           DISPLAY 'REPROVADO'
                       END-IF
               END-IF.
           COMPUTE WRK-MD = (WRK-NOTA1 + WRK-NOTA2) / 2;
           MOVE WRK-MD TO WRK-MD-ED.
           DISPLAY 'A MEDIA EH ' WRK-MD-ED.
           STOP RUN.
