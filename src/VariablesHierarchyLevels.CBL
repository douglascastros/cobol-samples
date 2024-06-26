      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES-HIERARCHY-LEVELS.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      
      * the most important level is 01, every data group begins with it
      * the level 77 it's used to consts

       01 WS-CUSTOMER.
           02 WS-NAME PIC X(50).
           02 WS-AGE PIC 9(2).
       
       01 WS-CUSTOMER-WIFE.
           02 WS-NAME PIC X(50).
           02 WS-AGE PIC 9(2).
           02 WS-NATIONALITY PIC X(50).

       PROCEDURE DIVISION.
       0000-MAIN.
           
           MOVE 'John T. Edge' TO WS-NAME OF WS-CUSTOMER
           MOVE 'Jessica T. Edge' TO WS-NAME OF WS-CUSTOMER-WIFE

      * when variable in data group is not ambiguous, isn't necessary
      * reference it on the attributions or other situations of use

           MOVE 'Brazilian' TO WS-NATIONALITY
      
      * when the line surpass 72 columns, the code must to 
      * continued in the next line

           DISPLAY 'The name of customer is: ' WS-NAME OF WS-CUSTOMER
           DISPLAY 'The name of wife customer is: ' WS-NAME OF
               WS-CUSTOMER-WIFE

           DISPLAY 'The nationality of customer wife is: ' 
               WS-NATIONALITY

           STOP RUN.
