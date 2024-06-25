      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COPY-BOOK-SAMPLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       COPY 'src/DATA-CITY.CPY'.

       PROCEDURE DIVISION.
       0000-MAIN.

           MOVE 'Los Angeles' TO WS-NAME OF WS-CITY
           MOVE 3748640 TO WS-POPULATION OF WS-CITY

           DISPLAY 'The name of city is: ' WS-NAME OF WS-CITY
           DISPLAY 'and have a population than: ' 
               WS-POPULATION OF WS-CITY

           STOP RUN.
