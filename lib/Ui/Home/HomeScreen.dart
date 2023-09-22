import 'package:flutter/material.dart';
import 'package:islamii/Ui/Home/hadeth/hadeethTab.dart';
import 'package:islamii/Ui/Home/quran/QuranTab.dart';
import 'package:islamii/Ui/Home/radio/radioTab.dart';
import 'package:islamii/Ui/Home/tasbeeh/tasbeehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTapIndex = index;
            });
          },
          currentIndex: selectedTapIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio'),
          ],
        ),
        body: tabs[selectedTapIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadeethTab(),
    TasbeehTab(),
    RadioTab(),
  ];
}
