// Task 1: Function to add two numbers
int addNumbers(int a, int b) {
  return a + b;
}

// Task 2: Print numbers from 1 to 10 using a for loop
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Switch statement to check different string values
void checkString(String value) {
  switch (value) {
    case 'hello':
      print('You said hello!');
      break;
    case 'goodbye':
      print('You said goodbye!');
      break;
    default:
      print('Unknown value');
  }
}

// Task 4: While loop to print numbers from 20 to 10
void printNumbersReverse() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: If-else statement to check if a number is even or odd
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Task 6: Program to find the largest number in a list
int findLargest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception('List is empty');
  }
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Task 7: Program to demonstrate try-catch block
void handleException() {
  try {
    int result = 10 ~/ 0; // This line will throw an exception
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1: Function to add two numbers
  int sum = addNumbers(5, 7);
  print('Sum: $sum');

  // Task 2: Print numbers from 1 to 10 using a for loop
  printNumbers();

  // Task 3: Switch statement to check different string values
  checkString('hello');
  checkString('goodbye');
  checkString('unknown');

  // Task 4: While loop to print numbers from 20 to 10
  printNumbersReverse();

  // Task 5: If-else statement to check if a number is even or odd
  checkEvenOdd(15);
  checkEvenOdd(20);

  // Task 6: Program to find the largest number in a list
  List<int> numbers = [10, 25, 7, 32, 18];
  int largestNumber = findLargest(numbers);
  print('Largest number: $largestNumber');

  // Task 7: Program to demonstrate try-catch block
  handleException();
}
