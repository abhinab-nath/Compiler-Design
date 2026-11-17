# LEX and YACC – Compiler Design Lab Notes

- **LEX** is used for lexical analysis.
- **YACC** is used for syntax analysis.

---

## Running LEX Programs

```powershell
flex program_name.l
gcc lex.yy.c
.\a.exe
```

## Running YACC Programs

```powershell
flex program_name.l
bison -dy program_name.y
gcc lex.yy.c y.tab.c
.\a.exe
```

**Note:** A combined LEX and YACC program requires both a `.l` file and a `.y` file. The `.l` file contains lexical rules, while the `.y` file contains grammar rules. The Flex file should include the generated `y.tab.h` header when using this workflow.

---

## -> What is LEX?

LEX is a tool used to generate a lexical analyzer or scanner.

It identifies tokens from input using patterns written as regular expressions.

### Working of LEX

1. We write rules in a `.l` file.
2. LEX reads the file.
3. It generates a C source file named `lex.yy.c`.
4. GCC compiles that C file.
5. We execute the generated program.

### Structure of a LEX Program

A LEX program consists of three sections:

```c
%{
    C declarations
%}

Definitions

%%
    Rules
%%

User defined functions
```

**Section 1: C Declarations**

Contains C header files and variable declarations.

**Section 2: Definitions**

Contains regular definitions and patterns.

**Section 3: Rules**

Contains patterns and their corresponding actions.

**User Defined Functions**

Contains functions such as `main()` and other required functions.

---

## Common Regular Expressions

| Regular Expression | Meaning |
|---|---|
| `[0-9]` | Any digit |
| `[a-z]` | Lowercase letter |
| `[A-Z]` | Uppercase letter |
| `[a-zA-Z]` | Any alphabet |
| `[0-9]+` | One or more digits |
| `[a-zA-Z]+` | One or more letters |
| `[a-zA-Z0-9]+` | One or more letters or digits |
| `.` | Any character except newline |
| `\n` | Newline |
| `\t` | Tab |
| `+` | One or more repetitions |
| `*` | Zero or more repetitions |

---

## -> What is YACC?

YACC stands for **Yet Another Compiler Compiler**.
It is a tool used to generate a parser for syntax analysis.
LEX identifies tokens, whereas YACC checks whether those tokens follow the grammar rules of a language.

### Structure of a YACC Program

A YACC program consists of three sections:

```c
%{
    C declarations
%}

YACC declarations

%%
    Grammar rules
%%

User defined functions
```

**Section 1: C Declarations**

Contains C header files and variable declarations.

**Section 2: YACC Declarations**

Contains token declarations and other parser-related definitions.

**Section 3: Grammar Rules**

Contains grammar productions and their corresponding actions.

**User Defined Functions**

Contains functions such as `main()` and `yyerror()`.
---

## Important YACC Terms

| Term | Meaning |
|---|---|
| `yyparse()` | Starts syntax analysis |
| `yylex()` | Gets tokens from LEX |
| `yyerror()` | Handles syntax errors |
| `yylval` | Passes token values from LEX to YACC |
| `$$` | Represents the value of the left-hand side |
| `$1`, `$2` | Represent values of grammar symbols on the right-hand side |

---

## --> Difference Between LEX and YACC

| LEX | YACC |
|---|---|
| Used for lexical analysis | Used for syntax analysis |
| Generates a lexical analyzer | Generates a parser |
| Uses regular expressions | Uses grammar rules |
| Identifies tokens | Checks token arrangement |
| Uses `.l` files | Uses `.y` files |

---

## --> Important Files

| File | Purpose |
|---|---|
| `program_name.l` | LEX source file |
| `program_name.y` | YACC source file |
| `lex.yy.c` | Generated C file by Flex |
| `y.tab.c` | Generated parser C file by Bison |
| `y.tab.h` | Generated header file containing token definitions |
| `a.exe` | Compiled executable file |

---

**Compiler Design Lab – LEX and YACC**

**-ABHINAB NATH**
