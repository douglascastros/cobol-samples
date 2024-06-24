      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ****************************************************************** 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES-HIERARCHY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           
       01 WS-DATE.
           03 WS-DAY PIC X(02).
           03 WS-SEPARATOR PIC X(1).
           03 WS-MONTH PIC X(02).
           03 WS-SEPARATOR-2 PIC X(1).
           03 WS-YEAR PIC X(04).

       PROCEDURE DIVISION.
      * that is just a paragraph name
       MAIN-PROCEDURE.

           MOVE '24/06/2024' TO WS-DATE
           DISPLAY 'DATE: ' WS-DATE

           DISPLAY 'DAY: ' WS-DAY
           DISPLAY 'MONTH: ' WS-MONTH
           DISPLAY 'YEAR: ' WS-YEAR

           STOP RUN.
