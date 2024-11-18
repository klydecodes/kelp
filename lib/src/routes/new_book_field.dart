import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/icons.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

// ignore: must_be_immutable
class NewBookField extends StatelessWidget {
  NewBookField({super.key});

  //quil controller
  QuillController _cOntroller = QuillController.basic();
  //scroll controller
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Done'),
      ),
      body: SafeArea(
          child: ListView(
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
                const Text('Write your story')
              ],
            ),
          ),

          //quil tool bar
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 139, 138, 138)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: QuillToolbar.simple(
                  configurations: QuillSimpleToolbarConfigurations(
                    controller: _cOntroller,
                    showLink: true,
                  ),
                  controller: _cOntroller,
                ),
              ),
            ),
          ),

          //editor space wher users can write their books
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Stack(
              children: [
                Text(
                  'Start here',
                  style: KelpTexTheme.darkModeTextTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(91, 158, 158, 158)),
                ),
                QuillEditor.basic(
                  controller: _cOntroller,
                  scrollController: scrollController,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
