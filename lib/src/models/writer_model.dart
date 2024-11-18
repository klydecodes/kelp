import 'package:kelp/src/models/book_model.dart';
import 'package:kelp/src/utils/images.dart';

class Writer {
  String? name;
  String? username;
  List<Book>? books;
  List<Writer>? followers;
  List<Writer>? following;
  bool? isVerified;
  String? profilePic;

  //constructor
  Writer({
    this.name,
    this.username,
    List<Book>? books,
    this.followers,
    this.following,
    this.isVerified,
    this.profilePic,
  }) {
    this.books = Book.bookList
        .where((book) => book.author['username'] == username)
        .toList();
  }

  //static list of some demo writers
  static final demoWriters = <Writer>[
    Writer(
      name: 'Judith Clarke',
      username: 'judy',
      profilePic: girl,
      isVerified: true,
    ),
    Writer(
      name: 'Mark manson',
      username: 'markmain',
      isVerified: true,
      profilePic: mark,
    ),
    Writer(
      name: 'Mark manson',
      username: 'markmain',
      isVerified: true,
      profilePic: mark,
    ),
  ];
}
