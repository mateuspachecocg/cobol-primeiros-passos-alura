       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER UM NUMERO
      *     GERAR A TABUADA DE 1 A 10
      *     UTILIZAR VARYING.
      * DATA = 22/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO    PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR  PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT    PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           END-IF.

           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM O NUMERO: '
           ACCEPT WRK-NUMERO FROM CONSOLE.

       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                           UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESULT = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESULT
           END-PERFORM.

       0300-FINALIZAR.
           DISPLAY '-------------------------'
           DISPLAY 'FINALIZAR O PROCESSAMENTO'.
