       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBD05.
      ***************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER MES DE UMA VENDA E VALOR
      * ACUMULAR VENDAS DE CADA MES
      * DATA = 22/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.

       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(3) OCCURS 12 TIMES.

       01 WRK-MESESVENDAS.
           03 WRK-MESTOTAL    PIC 9(06)V99 OCCURS 12 TIMES VALUE ZEROS.
       77  WRK-MESVENDA       PIC 9(02)                    VALUE ZEROS.
       77  WRK-VENDA          PIC 9(03)V99                 VALUE ZEROS.
       77  WRK-VD-ED          PIC ZZZ.ZZ9,99               VALUE ZEROS.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF NOT WRK-MESVENDA = 99
               PERFORM 0200-PROCESSAR UNTIL WRK-MESVENDA = 99
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM O MES DA VENDA: '
           ACCEPT WRK-MESVENDA.

       0200-PROCESSAR.
           DISPLAY 'ENTRE COM VALOR DA VENDA: '
           ACCEPT WRK-VENDA.
           ADD WRK-VENDA TO WRK-MESTOTAL(WRK-MESVENDA).
           PERFORM 0100-INICIALIZAR.

       0300-FINALIZAR.
           DISPLAY '-------------------------'
           PERFORM VARYING WRK-MESVENDA FROM 1 BY 1
                               UNTIL WRK-MESVENDA > 12
               MOVE WRK-MESTOTAL(WRK-MESVENDA) TO WRK-VD-ED
               DISPLAY 'MES ' WRK-MES(WRK-MESVENDA) ' VENDEU R$ '
                                       WRK-VD-ED
           END-PERFORM.
           DISPLAY 'FINALIZAR O PROCESSAMENTO'.
