       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: RECEBER UM CPF DO TECLADO
      * IMPRIMIR FORMATADO - XXX.XXX.XXX-XX
      * DATA = 21/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-CPF.
           02 WRK-TC1  PIC 9(03) VALUE ZEROS.
           02 WRK-TC2  PIC 9(03) VALUE ZEROS.
           02 WRK-TC3  PIC 9(03) VALUE ZEROS.
           02 WRK-DP1  PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-CPF FROM CONSOLE.
      ****************MOSTRA DADOS
           DISPLAY 'CPF: ' WRK-TC1 '.' WRK-TC2 '.' WRK-TC3 '-'
           WRK-DP1.
           STOP RUN.
