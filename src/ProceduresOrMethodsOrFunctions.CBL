      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCEDURES-METHODS-FUNCTIONS.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-STUDENT-GRADES.
           03 WS-GRADE-01 PIC 9(02).
           03 WS-GRADE-02 PIC 9(02).
           03 WS-AVERAGE PIC 9(02)V99.
       01 WS-SATISFACTION PIC X(20).

       PROCEDURE DIVISION.
       0000-PRINCIPAL.

           DISPLAY 'Type the first student grade: '
           ACCEPT WS-GRADE-01

           DISPLAY 'Type the second student grade: '
           ACCEPT WS-GRADE-02
       
      * calling a procedure or function
           PERFORM 1000-CALCULATE-AVERAGE THRU 1000-FIM

           DISPLAY 'The average of the student grade is: ' WS-AVERAGE
           DISPLAY 'The satisfaction level is: ' WS-SATISFACTION

           STOP RUN.

       0000-FIM. EXIT.

      * procedure begin syntax
       1000-CALCULATE-AVERAGE.

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
           END-EVALUATE.
      * the last line of a procedure must ends with a dot

       1000-FIM. EXIT.
      * procedure ends syntax
