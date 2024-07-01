      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITE-FILES.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILE-DATA-IN ASSIGN TO 'src/data.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT FILE-DATA-OUT ASSIGN TO 'src/data-out.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILE-DATA-IN.
       01 REGISTER.
           05 FS-CODE  PIC 999.
           05 FS-COMMA PIC X(01).
           05 FS-NAME  PIC X(20).

       FD FILE-DATA-OUT.
       01 REGISTER-OUT.
           05 FS-CODE-OUT      PIC 999.
           05 FS-COMMA-OUT-1   PIC X(01).
           05 FS-NAME-OUT      PIC X(20).
           05 FS-COMMA-OUT-2   PIC X(01).
           05 FS-CITY-OUT      PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-FILE-END    PIC X(01) VALUE 'N'.
       01 WS-PROGRAM-END PIC X(01) VALUE 'N'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT FILE-DATA-IN
           OPEN OUTPUT FILE-DATA-OUT
           PERFORM UNTIL WS-FILE-END = 'S'
               READ FILE-DATA-IN
                   AT END
                       MOVE 'S' TO WS-FILE-END
                   NOT AT END
                       MOVE FS-CODE    TO FS-CODE-OUT
                       MOVE FS-COMMA   TO FS-COMMA-OUT-1
                       MOVE FS-NAME    TO FS-NAME-OUT
                       MOVE ','        TO FS-COMMA-OUT-2
                       MOVE 'Chicago'  TO FS-CITY-OUT
                       WRITE REGISTER-OUT
               END-READ
           END-PERFORM
           CLOSE FILE-DATA-IN
           CLOSE FILE-DATA-OUT
           STOP RUN.
