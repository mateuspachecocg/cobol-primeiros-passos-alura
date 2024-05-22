       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBD04.
      *********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER VALOR INICIAL, PERIODO E TAXA DE CORRECAO
      *     CALCULAR A RENTABILIDADE DO INVESTIMENTO JUROS COMPOSTOS
      * DATA = 22/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-VL-INICIAL     PIC 9(06)V99    VALUE ZEROS.
       77  WRK-PERIODO        PIC 9(02)       VALUE ZEROS.
       77  WRK-TX-MENSAL      PIC 9(02)V99    VALUE ZEROS.
       77  WRK-MT-FINAL       PIC 9(06)V99    VALUE ZEROS.
       77  WRK-MD-ED          PIC ZZZ.ZZ9,99  VALUE ZEROS.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VL-INICIAL > 0 AND WRK-PERIODO > 0
                                  AND WRK-TX-MENSAL > 0
               PERFORM 0200-PROCESSAR
           END-IF.

           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM O VALOR INICIAL: '
           ACCEPT WRK-VL-INICIAL.

           DISPLAY 'ENTRE QUANTIDADE DE MESES: '
           ACCEPT WRK-PERIODO.

           DISPLAY 'TX REMUNERACAO MENSAL EM %: ' ACCEPT WRK-TX-MENSAL.

       0200-PROCESSAR.
           MOVE WRK-VL-INICIAL TO WRK-MT-FINAL.
           PERFORM WRK-PERIODO TIMES
               COMPUTE WRK-MT-FINAL = WRK-MT-FINAL *
                                       (WRK-TX-MENSAL/100 + 1)
           END-PERFORM.
           MOVE WRK-MT-FINAL TO WRK-MD-ED
           DISPLAY 'O MONTANTE FINAL R$ ' WRK-MD-ED.

       0300-FINALIZAR.
           DISPLAY '-------------------------'
           DISPLAY 'FINALIZAR O PROCESSAMENTO'.
