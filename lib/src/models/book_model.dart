import 'package:kelp/src/utils/images.dart';

class Book {
  String title;
  String cover;
  Map<String, Object> author;
  String? intro;

  Book({
    required this.title,
    required this.cover,
    required this.author,
    this.intro,
  });

  //static list of some demo books
  static final bookList = [
    //first demo book object
    Book(
      title: 'Adventure',
      cover: adventure,
      intro:
          '''A chapter, labelled 'Atomic Habits - Book Cover', introduces the reader to James Clear's revered title, 'Atomic Habits'. It sets the tone for the exploration within the text about the psychology of habit formation. As a visual genesis to the concept, the cover feasts on the central themes surrounding how people can manipulate mechanisms to adopt desired habits and part ways with unfavorable ones. Cracking the familiar struggles in habit formation and eradicating them is the focus of this chapter that's draped under this intriguing cover.
''',
      author: {
        'name': 'Willows',
        'username': 'wilx',
      },
    ),
    Book(
      title: 'Summon',
      cover: summon,
      intro:
          '''A chapter, labelled 'Atomic Habits - Book Cover', introduces the reader to James Clear's revered title, 'Atomic Habits'. It sets the tone for the exploration within the text about the psychology of habit formation. As a visual genesis to the concept, the cover feasts on the central themes surrounding how people can manipulate mechanisms to adopt desired habits and part ways with unfavorable ones. Cracking the familiar struggles in habit formation and eradicating them is the focus of this chapter that's draped under this intriguing cover.
''',
      author: {
        'name': 'Willows',
        'username': 'wilx',
      },
    ),
    Book(
      title: 'Canyon',
      cover: canyon,
      intro:
          '''A chapter, labelled 'Atomic Habits - Book Cover', introduces the reader to James Clear's revered title, 'Atomic Habits'. It sets the tone for the exploration within the text about the psychology of habit formation. As a visual genesis to the concept, the cover feasts on the central themes surrounding how people can manipulate mechanisms to adopt desired habits and part ways with unfavorable ones. Cracking the familiar struggles in habit formation and eradicating them is the focus of this chapter that's draped under this intriguing cover.
''',
      author: {
        'name': 'Willows',
        'username': 'wilx',
      },
    ),
    //
    Book(
      title: 'Atomic habits',
      cover: atomic_habits,
      intro:
          '''A chapter, labelled 'Atomic Habits - Book Cover', introduces the reader to James Clear's revered title, 'Atomic Habits'. It sets the tone for the exploration within the text about the psychology of habit formation. As a visual genesis to the concept, the cover feasts on the central themes surrounding how people can manipulate mechanisms to adopt desired habits and part ways with unfavorable ones. Cracking the familiar struggles in habit formation and eradicating them is the focus of this chapter that's draped under this intriguing cover.
''',
      author: {
        'name': 'James Clear',
        'username': 'james_clear',
      },
    ),
    //
    Book(
      title: 'The psychology of money',
      cover: psyc_of_money,
      author: {
        'name': 'Morgan Housel',
        'username': 'housel',
      },
    ),
  ];
}
