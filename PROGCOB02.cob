       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.
      *********************************
      * AREA DE COMENTARIOS -REMARKS
      * AUTHOR = MATEUS (ALURA) MATAL
      * OBJETIVO: IMPRIMIR UMA STRING
      * DATA = 21/05/2024
      ********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME... ' WRK-NOME.
           STOP RUN.
