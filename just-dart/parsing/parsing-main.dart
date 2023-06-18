import "../models/stack.dart";

//Check PDA
dynamic checkPDA(dynamic input) {
  Stack myStack = Stack(30);
  bool valid = true;

  //Active state is 'i'
  myStack.push('#');

  //Active state is 'p'
  myStack.pushWord('STATEMENT');

  //Active state is 'q'
  int pos = 0;
  while (myStack.top != '#' && valid) {
    String symbol = input[pos];
    print(myStack.printAllStack());
    print(symbol);
    // print(myStack.top);
    switch (myStack.top) {
      //Check the Top of Stack is 'STATEMENT'
      case "STATEMENT":
        {
          if (symbol == "if") {
            myStack.pop();
            myStack.pushWord("if ( KONDISI ) { AKSI } else { AKSI }");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'KONDISI'
      case "KONDISI":
        {
          if (input[pos + 1] == ")") {
            myStack.pop();
            myStack.pushWord("VARIABEL");
          } else if (symbol == 'a' ||
              symbol == 'b' ||
              symbol == 'c' ||
              symbol == 'd') {
            myStack.pop();
            myStack.pushWord("VARIABEL OPERATOR VARIABEL");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'AKSI'
      case 'AKSI':
        {
          if (symbol == 'a' ||
              symbol == 'b' ||
              symbol == 'c' ||
              symbol == 'd') {
            myStack.pop();
            myStack.pushWord("VARIABEL = VARIABEL OPERATOR VARIABEL");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'VARIABEL'
      case 'VARIABEL':
        {
          if (symbol == 'a') {
            myStack.pop();
            myStack.push("a");
          } else if (symbol == 'b') {
            myStack.pop();
            myStack.push("b");
          } else if (symbol == 'c') {
            myStack.pop();
            myStack.push("c");
          } else if (symbol == 'd') {
            myStack.pop();
            myStack.push("d");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'OPERATOR'
      case 'OPERATOR':
        {
          if (symbol == '>') {
            myStack.pop();
            myStack.push(">");
          } else if (symbol == '<') {
            myStack.pop();
            myStack.push("<");
          } else if (symbol == '==') {
            myStack.pop();
            myStack.pushWord("==");
          } else if (symbol == '*') {
            myStack.pop();
            myStack.push("*");
          } else if (symbol == '+') {
            myStack.pop();
            myStack.push("+");
          } else if (symbol == '-') {
            myStack.pop();
            myStack.push("-");
          } else if (symbol == '/') {
            myStack.pop();
            myStack.push("/");
          } else if (symbol == 'a' || symbol == 'b') {
            myStack.pop();
            myStack.pushWord("VARIABEL");
          } else {
            return valid = false;
          }
        }
        break;

      //POP Symbols
      //Check the Top of Stack is 'a'
      case 'a':
        {
          if (symbol == 'a') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'b'
      case 'b':
        {
          if (symbol == 'b') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'c'
      case 'c':
        {
          if (symbol == 'c') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'd'
      case 'd':
        {
          if (symbol == 'd') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'if'
      case "if":
        {
          if (symbol == "if") {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'else'
      case "else":
        {
          if (symbol == "else") {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '>'
      case '>':
        {
          if (symbol == '>') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '<'
      case '<':
        {
          if (symbol == '<') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '=='
      case '==':
        {
          if (symbol == '==') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '='
      case '=':
        {
          if (symbol == '=') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '*'
      case '*':
        {
          if (symbol == '*') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '+'
      case '+':
        {
          if (symbol == '+') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '-'
      case '-':
        {
          if (symbol == '-') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break; //Check the Top of Stack is '*'
      case '/':
        {
          if (symbol == '/') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '{'
      case '{':
        {
          if (symbol == '{') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '}'
      case '}':
        {
          if (symbol == '}') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is '('
      case '(':
        {
          if (symbol == '(') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is ')'
      case ')':
        {
          if (symbol == ')') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Return false if elements top of stack not match with if-case above
      default:
        return valid = false;
    }
  }

  myStack.pop();
  //Active state is 'f' pop '#'

  return valid;
}
