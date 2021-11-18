<p style="text-align: center; font-size:20pt;"> <strong> Scanner-Parse Project </strong></p>

#### Name: MennaTullah Abdelrahman Abdelbadie
#### ID: 1201800 09


##Objectives:
- Getting familiar with ANTLR.  
- Implementing the theoretical concepts of lexical analysis and parsing through the tool.
- Familiarizing ourselves with writing grammars by implementing the Decaf grammar.

##Project Overview: 
In computer-based language recognition, ANTLR is a powerful parser generator that uses LL for parsing. We use it to read, process, execute and translate structured texts. ANTLR is developed by Terence Parr in 1989 and written in JAVA. Also, Twitter search uses ANTLR for query parsing, with over 2 billion queries a day. From a formal language description called a grammar, ANTLR generates a parse for that language that can build parse trees, which are data structures representing how a grammar matches the input. ANTLR also generates tree walkers that is used to visit the nodes of those trees to execute application-specific code. My project is to build this grammar file based on MIT Assignment documentation. 
##Important Parts in the project:
**Scanner**
It is used to convert a stream of charachters to a stream of token. It helps the compiler to know which parts to care about and ignore which parts. For example if you give a compiler stream of charachters inside the string mark "kjfndngf", the compiler doesn't really care about the string. In decaf the word **Class** is a keyword then, you couldn't use it as a variable. 
<div style="page-break-after: always;"></div>

### Example of Scanner function
```java
class Program {
    void main(){
        callout('printf', '%d', 42); 
    }
}
```
IDEN [main and callout, Program] only. 

In this grammar file we got terminal and non-terminal expressions. The terminal expressions are written capital while the non-terminal expressions are written small. 
Groups are written inside (G). 
All the rules in the MIT documentation are followed except for some structures. 
The following table is to demonstrate the differences in grammar given by MIT documentation and the project's implementation.
| Given       | Implemented |
| ----------- | ----------- |
| ( )      | '('  ')'       |
| [x]   | (x)?        |
| { } | ()|
|x+ | (x)(',' x)*|

### Project Representations:
- Putting <fragment> before CHAR, disable the comming rule (CHAR) matching unless CHAR is a child. 
- Lexical Rule: Terminal  and Capital. 
- Parser Rule: non-Terminal and Small letters

<div style="page-break-after: always;"></div>


#### The code is consistent of:
1. Program: Our start which represents the structure of our input 
2. Basic: Non-Terminal expressions
3. Alternatives: Terminal expressions which use the basic part to be formulated. 

#### Example of the Tree:

![pic](/2.JPG)

##References: 
1. [MIT Documentation](#https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-035-computer-language-engineering-spring-2010/projects/MIT6_035S10_decaf.pdf)
2. [ANTLR Documentation](#https://www.antlr.org/about.html)
