       IDENTIFICATION DIVISION.
      * this section contains informations about the program, like
      * name, author and creation date.
      * includes too anything others informations can be util to the
      * documentation of the program.

       PROGRAM-ID. HELLO-WORLD.
      * programmer: douglascastros
      * system: hello world
      * objective: displays one message of the hello world in the screen

       ENVIRONMENT DIVISION.
      * this section contains informations about the environment of
      * executon of the program, like operational system, 
      * units of input and output and others resources of hardware
      * that it can use.

       CONFIGURATION SECTION.

       DATA DIVISION.
      * this section defines the variables that the program will use
      * to storage the data. The variables can be defined like numerics,
      * alphanumerics or structures composed them various fields

       WORKING-STORAGE SECTION.
      * where we defines the variables
       01 WS-MESSAGE PIC X(12) VALUE "HELLO WORLD!".

       PROCEDURE DIVISION.
      * correspondes to "c" area
       
           DISPLAY WS-MESSAGE.
      * displays message on the screen

           STOP RUN.
      * ends the program
