       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER UM NUMERO
      *     GERAR A TABUADA DE 1 A 10
      *     UTILIZAR PERFORM - UNTIL
      * DATA = 22/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *77 WRK-VENDAS    PIC 9(06)V99 VALUE ZEROS.
      *77 WRK-QT        PIC 9(03)    VALUE 0.
      *77 WRK-ACUM      PIC 9(02)V99 VALUE ZEROS.
           COPY 'BOOK.COB'.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.

           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM A VENDA: '
           ACCEPT WRK-VENDAS FROM CONSOLE.

       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 0100-INICIALIZAR.


       0300-FINALIZAR.
           DISPLAY '-------------------------'
           DISPLAY 'ACUMULADO ' WRK-ACUM.
           DISPLAY 'QT VENDAS ' WRK-QT.
           DISPLAY 'FINALIZAR O PROCESSAMENTO'.
