      * OBJECTIVE: OBJECTIVE: DO A  SAMPLE OF THE VARIABLES DECLARATION
      * DouglasCastros: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES-DECLARATION.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

      * specific location for declaring variables
      * the variables begin with WS of working storage
      * PIC is an abbreviation for Picture
      * is a good practice initialize the text
      * variables with SPACES, and numeric variables with ZEROS

       01 WS-NAME PIC X(10) VALUE SPACES.
       01 ws-AGE PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
           MOVE 'DOUGLAS' TO WS-NAME
           MOVE 36 TO ws-AGE

           DISPLAY 'USER: ' WS-NAME
           DISPLAY 'AGE: ' ws-AGE

           STOP RUN.
