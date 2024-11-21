# Class Organization Exercise

## Class Organization from the Book

Following the standard Java convention, a class should begin with a list of variables. Public static constants, if any, should come first. Then private static variables, followed by private instance variables. There is seldom a good reason to have a public variable.

Public functions should follow the list of variables. We like to put the private utilities called by a public function right after the public function itself. This follows the stepdown rule and helps the program read like a newspaper article.

---

## Problem Description

Create a Dart class named `LibrarySystem`. Follow the rules of class organization:

- Include a public static constant for the maximum number of books (`maxBooks`).
- Have private instance variables:
  - A list to store book titles.
  - An integer to track the total number of books issued.
- Implement public methods to:
  - Add a book.
  - Remove a book.
  - Retrieve the list of all books.
- Add private helper methods to support public methods (e.g., a method to validate book data).
