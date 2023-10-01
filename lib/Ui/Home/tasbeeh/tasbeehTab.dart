import 'package:flutter/material.dart';
import 'package:islamii/Ui/MyThemeData.dart';
import 'package:islamii/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class TasbeehTab extends StatefulWidget {
  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  double angle = 0;
  int counter = 0;
  int currentIndex = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * .47,
            child: Stack(
              children: [
                Positioned(
                  child: provider.isDarkEnabled()
                      ? Image.asset('assets/images/head of seb7a_dark.png')
                      : Image.asset('assets/images/head of seb7a.png'),
                  left: size.width * .48,
                ),
                Positioned(
                  child: InkWell(
                    onTap: onPressed,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Transform.rotate(
                      angle: angle,
                      child: provider.isDarkEnabled()
                          ? Image.asset('assets/images/body of seb7a_dark.png')
                          : Image.asset('assets/images/body of seb7a.png'),
                    ),
                  ),
                  top: 78,
                  left: size.width * .21,
                  right: size.width * .21,
                ),
              ],
            ),
          ),
          Text('عدد التسبيحات',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: provider.isDarkEnabled()
                  ? Color.fromRGBO(20, 26, 46, 1)
                  : MyThemeData.lightPrimary,
            ),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            width: 135,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.isDarkEnabled()
                    ? MyThemeData.darksecondry
                    : MyThemeData.lightPrimary),
            child: Text(
              '${azkar[currentIndex]}',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color:
                      provider.isDarkEnabled() ? Colors.black : Colors.white),
            ),
          )
        ],
      ),
    );
  }

  onPressed() {
    counter++;
    angle--;
    if (counter == 34) {
      currentIndex++;
      counter = 0;
    }
    if (currentIndex >= azkar.length) {
      currentIndex = 0;
    }
    setState(() {});
  }
}
