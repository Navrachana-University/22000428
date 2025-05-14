# 🌌 Star Wars-Themed Intermediate Code Generator (Flex + Bison)

This project is a fun exploration into compiler design, implementing an **intermediate code generator** using **Flex (Lex)** and **Bison (Yacc)** with a unique **Star Wars-themed syntax**. It takes code written in a custom Star Wars-inspired language and translates it into **Three-Address Code (TAC)**.

## 🚀 Features

- **Star Wars-Themed Syntax**: Write code using keywords inspired by the Star Wars universe.
  - Examples: `jedi`, `sith`, `lightsaber`, `force`, `hyperdrive`, `transmission`, `sector`, `then`, `else`, `endsector`.
- **Supports Fundamental Programming Constructs**:
  - Variable declaration
  - Arithmetic expressions (+, -, *, /)
  - Conditional `if-else` logic
  - Basic print statements
- **Generates Three-Address Code (TAC)**: The output is a sequence of TAC instructions, a common intermediate representation in compilers.

## 📁 Project Files

| File                  | Description                                                     |
|-----------------------|-----------------------------------------------------------------|
| `lexer.l`             | Flex file defining the Star Wars-themed tokens for the lexer.    |
| `yacc.y`              | Bison file defining the grammar and the actions to generate TAC. |
| `input.txt`           | Example input program written in the Star Wars-style syntax.     |
| `output.txt`          | The generated Three-Address Code output after compilation.      |
| `keywordsToken.txt`   | Reference mapping of custom Star Wars keywords to traditional operators/syntax. |
| `compiler.exe`        | Precompiled executable (for direct execution on compatible systems). |
| `README.md`           | Project documentation (this file).                             |


## Special Instructions to Run the Code:

To compile and run the code, follow these steps:

1.  Ensure you have Flex, Bison, and GCC installed.

2.  Open a terminal or command prompt and navigate to the project directory.

3.  Generate the C code from the lexer and parser files:
    flex lexer.l
    bison -d yacc.y

4.  Compile the generated C code:
    gcc lex.yy.c y.tab.c -lfl -o compiler

5.  Run the compiler with the input file, redirecting the output to output.txt:
    ./compiler input.txt > output.txt

    (Or, if using the precompiled executable:
     compiler.exe input.txt > output.txt )

6.  The generated Three-Address Code will be saved in the output.txt file.

## Author Information:

Name: Kirtan Shah
Roll Number: 22000428
