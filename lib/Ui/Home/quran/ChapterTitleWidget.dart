import 'package:flutter/material.dart';
import 'package:islamii/Ui/chapter_details/ChapterDetailsScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArgs(title, index));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(title, style: Theme.of(context).textTheme.titleMedium)),
    );
  }
}
