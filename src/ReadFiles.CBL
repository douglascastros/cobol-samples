      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-FILES.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILE-DATA ASSIGN TO 'src/data.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILE-DATA.
       01 REGISTER.
           05 FS-CODE  PIC 999.
           05 FS-COMMA PIC X(01).
           05 FS-NAME  PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-FILE-END    PIC X(01) VALUE 'N'.
       01 WS-PROGRAM-END PIC X(01) VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT FILE-DATA
           PERFORM UNTIL WS-FILE-END = 'S'
               READ FILE-DATA
                   AT END
                       MOVE 'S' TO WS-FILE-END
                   NOT AT END
                       DISPLAY 'Code: ' FS-CODE
                       DISPLAY 'Name: ' FS-NAME
               END-READ
           END-PERFORM
           CLOSE FILE-DATA
           STOP RUN.
      
      * INPUT-SECTION make a kind of I.O
      * FILE SECTION specify how much columns is necessary by field
      * in each line
      * READ command into PERFORM command set each line separated by
      * columns specify in the FILE SECTION