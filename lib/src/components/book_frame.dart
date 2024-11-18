import 'package:flutter/material.dart';
import 'package:kelp/src/models/book_model.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

Widget bookFrame({required Book book}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 192,
        width: 140,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(book.cover), fit: BoxFit.cover),
        ),
      ),
      //title of the book
      Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: SizedBox(
          width: 130,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            book.title,
            style: KelpTexTheme.darkModeTextTheme.bodySmall
                ?.copyWith(fontSize: 11),
          ),
        ),
      )
    ],
  );
}
