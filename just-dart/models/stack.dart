// Defining Stack
class Stack {
  // Use an array to store the elements of the stack
  final _elements = [];
  // Use a variable to keep track of the capacity of the array
  late int _capacity;
  // Use a variable to keep track of the top index of the stack
  int _top = -1;

  // Constructor for the stack class
  Stack(int capacity) {
    // Initialize the capacity of the array
    _capacity = capacity;
    // Resize the array to match the capacity
    _elements.length = _capacity;
  }

  //Push an element (each word) to the top of the stack
  void pushWord(dynamic element) {
    // Check if the stack is full
    if (_top == _capacity - 1) {
      // print a notification if the stack is full
    } else {
      var word = element.toString().split(' ');
      for (int i = word.length - 1; i >= 0; i--) {
        // Increment the top index
        _top++;
        // Assign the element to the top index of the array
        _elements[_top] = word[i];
      }
    }
  }

  // Push an element to the top of the stack
  void push(dynamic element) {
    // Check if the stack is full
    if (_top == _capacity - 1) {
      // print a notification if the stack is full
      print('The stack is full');
    } else {
      for (int i = element.toString().length - 1; i >= 0; i--) {
        String char = element[i];
        // Increment the top index
        _top++;
        // Assign the element to the top index of the array
        _elements[_top] = char;
      }
    }
  }

  // Pop an element from the top of the stack
  dynamic pop() {
    // Check if the stack is empty
    if (_top == -1) {
      // Print a notification if the stack is empty
      print('The stack is empty');
    } else {
      // Get the element at the top index of the array
      var element = _elements[_top];
      // Decrement the top index
      _top--;
      // Return the element
      return element;
    }
  }

  // Get the size of the stack
  int get size {
    return _top + 1;
  }

  // Get the top element of the stack
  dynamic get top {
    // Check if the stack is empty
    if (_top == -1) {
      // Throw an exception if the stack is empty
      return ('The stack is empty');
    } else {
      // Return the element at the top index of the array
      return _elements[_top];
    }
  }

  // Get the exact index element of the stack

  dynamic data(int index) {
    // Check if the stack is empty
    if (_top == -1) {
      // Throw an exception if the stack is empty
      return ('The stack is empty');
    } else {
      // Return the element at the top index of the array
      return _elements[index];
    }
  }

  //Print all data inside stack
  dynamic printAllStack() {
    String elements = "";

    //Check if stack is empty
    if (_top == -1) {
      return ("Stack is Empty");
    } else {
      //Initial i to Top of Stack
      int i = _top;
      while (i != -1) {
        //Put all data in stack from top to bottom inside elements
        elements = "$elements ${_elements[i]}";
        i--;
      }
    }
    //Return elements
    return elements;
  }
}
