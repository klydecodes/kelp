import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/icons.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

class NewBookScreen extends StatefulWidget {
  const NewBookScreen({super.key});

  @override
  State<NewBookScreen> createState() => _NewBookScreenState();
}

class _NewBookScreenState extends State<NewBookScreen> {
  File? _image;
  final _picker = ImagePicker();

  //function to pick image
  Future<void> pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        Navigator.popAndPushNamed(context, 'home_screen'),
                    child: SvgPicture.asset(arrowBackIcon),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text('Create a new story')
                ],
              ),
            ),
            _image == null
                ? Center(
                    child: GestureDetector(
                      onTap: () => pickImage(),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            height: 200,
                            width: 200,
                            padding: const EdgeInsets.all(90),
                            decoration: const BoxDecoration(
                                color: grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: SvgPicture.asset(addImageIcon,
                                height: 10, width: 10),
                          ),

                          //add a caption text
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Add story cover',
                              style: KelpTexTheme.darkModeTextTheme.bodySmall
                                  ?.copyWith(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    height: 200,
                    width: 100,
                    margin: const EdgeInsets.only(top: 40),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(200)),
                    child: GestureDetector(
                      onTap: () => pickImage(),
                      child: ClipRRect(
                        child: Image.file(
                          _image!,
                        ),
                      ),
                    ),
                  ),

            //title of the text
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30, bottom: 7),
              child: Text(
                'Title',
                style: KelpTexTheme.darkModeTextTheme.bodyMedium
                    ?.copyWith(fontSize: 17),
              ),
            ),

            //book title text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                style: KelpTexTheme.darkModeTextTheme.labelMedium,
                decoration: const InputDecoration(
                  hintText: 'What is the title of your book',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50, bottom: 7),
              child: Text(
                'Intro',
                style: KelpTexTheme.darkModeTextTheme.bodyMedium
                    ?.copyWith(fontSize: 17),
              ),
            ),

            //book title text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                style: KelpTexTheme.darkModeTextTheme.labelMedium,
                decoration: const InputDecoration(
                  hintText: 'Give a short intro of what your book is all about',
                ),
              ),
            ),

            //next button
            Padding(
              padding: const EdgeInsets.only(top: 195, left: 20, right: 20),
              child: FilledButton(
                onPressed: () => Navigator.pushNamed(context, 'new_book_field'),
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
