import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/Ui/Home/hadeth/HadethTitleWidget.dart';

import 'Hadeth.dart';

class HadeethTab extends StatefulWidget {
  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/hadeeth_header.png')),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ))),
            child: Text(
              'Hadeth',
              style: TextStyle(
                fontSize: 24,
              ),
            )),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitleWidget(allAhadeth[index]);
                  },
                  separatorBuilder: (context, index) => Container(
                        color: Theme.of(context).primaryColor,
                        height: 2,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                  itemCount: allAhadeth.length),
        )
      ],
    );
  }

  List<Hadeth> allAhadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.trim().split('#');
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String title = hadethLines[0]; //first line
      hadethLines.remove(0);
      String content = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
    }
    setState(() {});
  }
}
