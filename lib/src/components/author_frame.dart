import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelp/src/models/writer_model.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/icons.dart';
import 'package:kelp/src/utils/images.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

// ignore: must_be_immutable
class WriterFrame extends StatefulWidget {
  WriterFrame({
    super.key,
    required this.writer,
  });

  Writer writer;

  @override
  State<WriterFrame> createState() => _WriterFrameState();
}

class _WriterFrameState extends State<WriterFrame> {
  bool isFollowed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 130,
      padding: const EdgeInsets.only(top: 18),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border.all(color: fgrey),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(widget.writer.profilePic ?? girl),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //name of the user
                Text(widget.writer.name ?? 'Name',
                    style: KelpTexTheme.darkModeTextTheme.bodySmall),
                const SizedBox(width: 5),
                SvgPicture.asset(verifiedIcon, height: 11, width: 11)
              ],
            ),
          ),

          //follow button
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  isFollowed = !isFollowed;
                });
              },
              style: ButtonStyle(
                side: WidgetStatePropertyAll(BorderSide(
                    color: isFollowed ? white : Colors.transparent,
                    width: isFollowed ? 0.7 : 0.1)),
                backgroundColor: isFollowed
                    ? const WidgetStatePropertyAll(black)
                    : const WidgetStatePropertyAll(white),
                minimumSize: const WidgetStatePropertyAll(Size(108, 29)),
                maximumSize: const WidgetStatePropertyAll(Size(108, 29)),
              ),
              child: Text(
                isFollowed ? 'Following' : 'Follow',
                style: KelpTexTheme.darkModeTextTheme.bodySmall
                    ?.copyWith(fontSize: 12, color: isFollowed ? white : black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
