import 'package:test/test.dart';
import 'package:class_organization/class_organization.dart';

void main() {
  group('LibrarySystem Tests', () {
    late LibrarySystem librarySystem;

    setUp(() {
      librarySystem = LibrarySystem();
    });

    test('Test add a book', () {
      librarySystem.addBook('The Great Gatsby');
      expect(librarySystem.checkListOfBooks(), contains('The Great Gatsby'));
    });

    test('Test remove a book', () {
      librarySystem.addBook('1984');
      librarySystem.removeBook('1984');
      expect(librarySystem.checkListOfBooks(), isNot(contains('1984')));
    });

    test('Test adding a book when max limit is reached', () {
      // Adding books up to the max limit
      for (int i = 0; i < LibrarySystem.maxBookNumbers; i++) {
        librarySystem.addBook('Book $i');
      }

      // Try adding another book, should fail
      expect(() => librarySystem.addBook('New Book'),
          prints(contains('Cannot add more books. Maximum limit reached.\n')));
    });

    test('Test add duplicate book', () {
      librarySystem.addBook('The Hobbit');

      librarySystem.addBook('The Hobbit');

      expect(librarySystem.totalIssue, equals(1));
      // Only 1 issue should occur when trying to add a duplicate book
    });

    test('Test remove non-existent book', () {
      librarySystem.removeBook('Non Existent Book');

      expect(librarySystem.totalIssue, equals(1));
      // Only 1 issue should occur when trying to remove a non-existent book
    });

    test('Test check list of books', () {
      librarySystem.addBook('The Catcher in the Rye');
      var books = librarySystem.checkListOfBooks();
      expect(books, contains('The Catcher in the Rye'));
    });
  });
}
