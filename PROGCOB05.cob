       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: OPERADORES ARITMETICOS
      * DATA = 21/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1    PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2    PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL   PIC 9(03) VALUE ZEROS.
       77 WRK-RESTO   PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '==============================='
           DISPLAY 'NUMERO 1.. ' WRK-NUM1.
           DISPLAY 'NUMERO 2.. ' WRK-NUM2.
      ************** ADICAO
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA .....' WRK-RESUL.
      ************** SUBTRACAO
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO .... ' WRK-RESUL.
      ************** DIVISAO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
           REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO .... ' WRK-RESUL.
           DISPLAY 'RESTO ....' WRK-RESTO.
      ************** MULTIPLICACAO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTPILICACAO .... ' WRK-RESUL.

      ************** COMPUTE
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA ... ' WRK-RESUL.
           STOP RUN.
