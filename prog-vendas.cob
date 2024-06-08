
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG-VENDAS.
      *===========================================
      *    == AUTOR: ***; EMPRESA: XPTO
      *    ==OBJETIVO: VENDAS DE PRODUTOS COM ACUMULADOS
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77 WRK-PRODUTO PIC X(30) VALUE SPACES.
       77 WRK-VALOR PIC 9(05)V99 VALUE ZEROS.
       77 WRK-VENDAS-ACUM PIC 9(06)V99 VALUE ZEROS.
       77 WRK-PROD-ACUM PIC 9(03)V99 VALUE ZEROS.

       PROCEDURE          DIVISION.
       0001-MAIN     SECTION.
           PERFORM 0100-INICIALIZE.
           PERFORM 0200-PROCESS UNTIL WRK-VALOR EQUAL 99999.
           PERFORM 0300-FINISH.
           STOP RUN.

       0100-INICIALIZE         SECTION.
           DISPLAY "=-=-=-==-=-=-==-=-=-=-=-=-=-=-=".
           DISPLAY "DIGITE O PRODUTO: ".
           ACCEPT WRK-PRODUTO.
           DISPLAY "DIGITE O VALOR: ".
           ACCEPT WRK-VALOR.

       0200-PROCESS       SECTION .
           COMPUTE WRK-VENDAS-ACUM = WRK-VENDAS-ACUM + WRK-VALOR.
           ADD 1 TO WRK-PROD-ACUM.
           PERFORM 0100-INICIALIZE.

       0300-FINISH        SECTION.
           DISPLAY "========================================".
           DISPLAY "TOTAL DE VENDAS: " WRK-VENDAS-ACUM.
           DISPLAY "TOTAL DE PRODUTOS: " WRK-PROD-ACUM.
