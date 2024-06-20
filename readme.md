## rules of cobol

* the maximum columns allowed for a line of code in cobol is 80
* the code can't pass of the column 72, because from column 72 at 80 is a reserved space
* the column 7 is reserved too
* the code convention of the cobol is based in three areas *a*, *b* and *c*
  * the area *a* have the columns from 1 at 6 and it's used to identify the division of the programn and paragraphs 
    ```
        IDENTIFICATION DIVISION.
        PROGRAM-ID. MY-FIRST-PROGRAM.
        AUTHOR. JOHN SMITH.
        DATE-WRITTEN. MARCH 3, 2024.
    ```
  * the area *b* have the columns from 8 at 11 and it's used to declare the variables hierarchically
    ```
        01 CUSTOMER-RECORD.
           05 CUSTOMER-ID       PIC X(6)
           05 CUSTOMER-NAME     PIC X(30)
           05 CUSTOMER-ADDRESS  PIC X(40)
           05 CREDIT-LIMIT      PIC 9(6)
    ```
  * the area *c* have the columns from 12 at 80 and it's used to writing the program code
    ```
        PERFORM UNTIL WS-EOF-FLAG = 'Y'
            READ CREDIT-CARD-FILE
            AT END SET WS-EOF-FLAG TO 'Y'
            END-READ
            IF WS-EOF-FLAG = 'N'
                PERFORM PROCESS-CREDIT-CARD
            END-IF
        END-PERFORM
    ```