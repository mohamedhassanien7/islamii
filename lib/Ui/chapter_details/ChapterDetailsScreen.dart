import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/Ui/chapter_details/VerseWidget.dart';
import 'package:islamii/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapterdetails';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return VerseWidget(verses[index], index);
              },
              itemCount: verses.length,
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).dividerColor,
                height: 2,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 64),
              ),
            ),
          )),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
