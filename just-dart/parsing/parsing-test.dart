import '../models/stack.dart';

//Check PDA
dynamic checkPDA(dynamic input) {
  Stack myStack = Stack(30);
  bool valid = true;

  //Active state is 'i'
  myStack.push('#');

  //Active state is 'p'
  myStack.push('S');

  //Active state is 'q'
  int pos = 0;
  while (myStack.top != '#' && valid) {
    String symbol = input[pos];
    // print(myStack.top);
    switch (myStack.top) {
      //Check the Top of Stack is 'S'
      case 'S':
        {
          if (symbol == 'z') {
            myStack.pop();
            myStack.push("zPzQz");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'P'
      case 'P':
        {
          if (symbol == 'b') {
            myStack.pop();
            myStack.push("bPb");
          } else if (symbol == 'p') {
            myStack.pop();
            myStack.push("p");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'Q'
      case 'Q':
        {
          if (symbol == 'c') {
            myStack.pop();
            myStack.push("cQcb");
          } else if (symbol == 'q') {
            myStack.pop();
            myStack.push("q");
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'p'
      case 'p':
        {
          if (symbol == 'p') {
            myStack.pop();
            pos++;
          } else {
            return valid = false;
          }
        }
        break;
      //Check the Top of Stack is 'q'
      case 'q':
        {
          if (symbol == 'q') {
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
      //Check the Top of Stack is 'z'
      case 'z':
        {
          if (symbol == 'z') {
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
  //Active state is 'f'

  return valid;
}
