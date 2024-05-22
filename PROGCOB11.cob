       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER NOME, ANO DE POSSE E SALARIO
      *  CALCULAR AUMENTO SALARIAL
      * DATA = 22/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME                 PIC X(20)        VALUE SPACES.
       77 WRK-ANO-POSSE            PIC 9(04)        VALUE ZEROS.
       77 WRK-SALARIO              PIC 9(06)V99     VALUE ZEROS.
       77 WRK-SALARIO-ED           PIC Z.ZZ9,99     VALUE ZEROS.
       77 WRK-AUMENTO              PIC 9(06)V99     VALUE ZEROS.
       77 WRK-ANO-TRABALHO         PIC 9(02)        VALUE ZEROS.
       PROCEDURE DIVISION.

           DISPLAY 'NOME... '
           ACCEPT WRK-NOME.

           DISPLAY 'ANO DE POSSE... '
           ACCEPT WRK-ANO-POSSE.

           DISPLAY 'SALARIO... '
           ACCEPT WRK-SALARIO.

           COMPUTE WRK-ANO-TRABALHO = 2024 - WRK-ANO-POSSE.

           EVALUATE WRK-ANO-TRABALHO
              WHEN 0 THRU 1,0
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,00
              WHEN 2 THRU 5,0
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,05
              WHEN 6 THRU 15,0
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,10
              WHEN OTHER
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,15
              END-EVALUATE.
           MOVE WRK-AUMENTO TO WRK-SALARIO-ED.
           DISPLAY 'O FUNCIONARIO ' WRK-NOME.
           DISPLAY 'VAI TER AUMENTO R$ ' WRK-SALARIO-ED.
           COMPUTE WRK-SALARIO = WRK-SALARIO + WRK-AUMENTO.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'NOVO SALARIO    R$ ' WRK-SALARIO-ED.

           STOP RUN.
