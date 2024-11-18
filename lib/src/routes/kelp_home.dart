import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelp/src/routes/home_screen.dart';
import 'package:kelp/src/routes/search_screen.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/icons.dart';

// ignore: must_be_immutable
class KelpHome extends StatefulWidget {
  const KelpHome({super.key});

  @override
  State<KelpHome> createState() => _KelpHomeState();
}

class _KelpHomeState extends State<KelpHome> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
  ];

  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selected_index],
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: white, width: 0.4))),
        child: BottomAppBar(
          padding: const EdgeInsets.only(bottom: 10),
          color: black,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //home icon
              GestureDetector(
                onTap: () => setState(() {
                  selected_index = 0;
                }),
                child: SvgPicture.asset(homeIcon),
              ),
              //search icon
              GestureDetector(
                onTap: () => setState(() {
                  selected_index = 1;
                }),
                child: SvgPicture.asset(searchIcon),
              ),
              //add new note icon
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'new_book_screen'),
                child: SvgPicture.asset(addIcon),
              ),
              //spacer
              const SizedBox(width: 1),
              //bookmark icon
              GestureDetector(
                child: SvgPicture.asset(bookmarkOutlinedIcon),
              ),
            ],
          ),
        ),
      ),
      //
    );
  }
}
