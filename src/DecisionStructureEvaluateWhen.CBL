      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECISION-STRUCTURE-EVAL-WHEN.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-STUDENT-GRADES.
           03 WS-GRADE-01 PIC 9(02).
           03 WS-GRADE-02 PIC 9(02).
           03 WS-AVERAGE PIC 9(02)V99.
       01 WS-SATISFACTION PIC X(20).

      * use v99 to indicates that variable is a decimal with 2 places

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * use the reserved word accept, 
      * to allow that user informs the value

           DISPLAY 'Type the first student grade: '
           ACCEPT WS-GRADE-01

           DISPLAY 'Type the second student grade: '
           ACCEPT WS-GRADE-02

      * use the reserved word compute
      * to the cobol execute the processings

           COMPUTE WS-AVERAGE = (WS-GRADE-01 + WS-GRADE-02) / 2

           EVALUATE WS-AVERAGE
           
            WHEN < 5
                MOVE 'Terrible' TO WS-SATISFACTION
            WHEN < 7
                MOVE 'Can be improved' TO WS-SATISFACTION
            WHEN < 9
                MOVE 'Very good' TO WS-SATISFACTION
            WHEN < 10
                MOVE 'Excellent' TO WS-SATISFACTION

           END-EVALUATE

           DISPLAY 'The average of the student grades is: ' WS-AVERAGE
           DISPLAY 'The satisfaction level is: ' WS-SATISFACTION

           STOP RUN.
