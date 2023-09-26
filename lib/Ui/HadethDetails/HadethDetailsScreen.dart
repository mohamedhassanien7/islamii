import 'package:flutter/material.dart';

import '../Home/hadeth/Hadeth.dart';
import '../MyThemeData.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(args.title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                    child: SingleChildScrollView(
                      child: Text(
                          textAlign: TextAlign.center,
                          args.content,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                  ),
                ),
              ],
            )));
  }
}
