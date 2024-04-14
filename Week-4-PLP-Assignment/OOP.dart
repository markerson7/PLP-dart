import 'dart:io';

// Object-oriented model using classes and inheritance
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Interface definition
abstract class Printable {
  void printInfo();
}

// Class implementing an interface
class Book implements Printable {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  @override
  void printInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }

  // Initialize instance with data from file
  static Book initializeFromFile(String filename) {
    final file = File(filename);
    final lines = file.readAsLinesSync();
    final title = lines[0];
    final author = lines[1];
    final pages = int.parse(lines[2]);
    return Book(title, author, pages);
  }
}

// Method demonstrating the use of a loop
class Library {
  List<Book> books;

  Library(this.books);

  void printBookInfo(int count) {
    for (var i = 0; i < count; i++) {
      print('Book ${i + 1}:');
      books[i].printInfo();
      print('------------');
    }
  }
}

void main() {
  // Object-oriented model with classes and inheritance
  final rectangle = Rectangle(5, 3);
  print('Rectangle Area: ${rectangle.area()}');

  final circle = Circle(4);
  print('Circle Area: ${circle.area()}');

  // Class implementing an interface
  final book = Book('Dart Programming', 'John Doe', 300);
  book.printInfo();

  // Initialize instance with data from file
  final newBook = Book.initializeFromFile('book_data.txt');
  print('New Book:');
  newBook.printInfo();

  // Method demonstrating the use of a loop
  final library = Library([book, newBook]);
  library.printBookInfo(2);
}
