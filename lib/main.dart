import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/Ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islamii/Ui/Home/HomeScreen.dart';
import 'package:islamii/Ui/MyThemeData.dart';
import 'package:islamii/Ui/chapter_details/ChapterDetailsScreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale('en'),
    );
  }
}
