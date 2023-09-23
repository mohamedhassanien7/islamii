import 'package:flutter/material.dart';
import 'package:islamii/Ui/HadethDetails/HadethDetailsScreen.dart';

import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            hadeth.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )),
    );
  }
}
