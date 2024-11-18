import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelp/src/components/author_frame.dart';
import 'package:kelp/src/components/book_frame.dart';
import 'package:kelp/src/models/book_model.dart';
import 'package:kelp/src/models/writer_model.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/icons.dart';
import 'package:kelp/src/utils/images.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  //custom app bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kelp',
                          style: GoogleFonts.irishGrover(
                              color: green, fontSize: 22),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(notificationIcon,
                                height: 23, width: 23),
                            const SizedBox(
                              width: 18,
                            ),
                            const CircleAvatar(
                              radius: 13,
                              backgroundImage: AssetImage(girl),
                            )
                          ],
                        ),
                        //user avatar
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 80.0, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Recommended',
                            style: KelpTexTheme.darkModeTextTheme.bodyMedium),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: SizedBox(
                      height: 260,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: Book.bookList.length,
                        padding: const EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final book = Book.bookList[index];
                          return Padding(
                            padding:
                                const EdgeInsets.only(top: 10, right: 15.0),
                            child: bookFrame(book: book),
                          );
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 380.0, horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Popular writers',
                            style: KelpTexTheme.darkModeTextTheme.bodyMedium,
                          ),
                        ),

                        //list of some writers
                        SizedBox(
                          height: 230,
                          width: double.infinity,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: Writer.demoWriters.length,
                            itemBuilder: (context, index) {
                              final writer = Writer.demoWriters[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 2.0),
                                child: WriterFrame(writer: writer),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
