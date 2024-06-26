      ******************************************************************
      * Author:
      * Date:
      * Porpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECISION-STRUCTURE-IF-ELSE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NUM-1 PIC 9(3) VALUE 50.
       01 WS-NUM-2 PIC 9(3) VALUE 10.
       
      * flag is a convention in cobol to indicate marcations
       01 WS-FLAG PIC X(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           IF WS-NUM-1 > WS-NUM-2
               MOVE 'YES' TO WS-FLAG
           ELSE
               MOVE 'NO' TO WS-FLAG
           END-IF

           DISPLAY 'FLAG: ' WS-FLAG

           STOP RUN.
