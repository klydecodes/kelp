import 'package:flutter/material.dart';
import 'package:kelp/src/models/book_model.dart';
import 'package:kelp/src/utils/colors.dart';

class BookPreviewScreen extends StatelessWidget {
  const BookPreviewScreen({
    super.key,
    this.book,
  });

  final Book? book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              book?.title ?? 'Title',
              style: const TextStyle(color: white),
            ),
            //image frame
            Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(book?.cover ?? 'Cover image')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
