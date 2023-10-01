import 'package:flutter/material.dart';
import 'package:islamii/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class LanguageButtomSheet extends StatefulWidget {
  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Light',
          //       style: TextStyle(fontSize: 24,color: Theme.of(context).primaryColor),
          //     ),
          //     Icon(Icons.check,
          //     color: Theme.of(context).primaryColor,),
          //   ],
          // ),
          // Text('Dark',
          //   style: TextStyle(fontSize: 24),
          // ),
          InkWell(
              onTap: () {
                settingsProvider.changeLocale("en");
                Navigator.of(context).pop();
              },
              child: settingsProvider.currentLocale == "en"
                  ? getSelectedItem('English')
                  : getUnSelectedItem("English")),
          InkWell(
              onTap: () {
                settingsProvider.changeLocale("ar");
                Navigator.of(context).pop();
              },
              child: settingsProvider.currentLocale == "ar"
                  ? getUnSelectedItem('العربية')
                  : getUnSelectedItem("العربية")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
