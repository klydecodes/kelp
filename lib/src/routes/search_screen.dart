import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelp/src/utils/icons.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: GestureDetector(
                onTap: () => Navigator.popAndPushNamed(context, 'home_screen'),
                child: SvgPicture.asset(arrowBackIcon),
              ),
            ),
            //search field

            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Find something to read',
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
