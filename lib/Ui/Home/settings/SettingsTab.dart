import 'package:flutter/material.dart';
import 'package:islamii/Ui/Home/settings/LanguageButtomSheet.dart';
import 'package:islamii/Ui/Home/settings/ThemeBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme'),
          InkWell(
            onTap: () {
              showThemeButtomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 1)),
                child: Text(
                  'Light',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          SizedBox(height: 18),
          Text('Language'),
          InkWell(
            onTap: () {
              showLanguageButtomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 1)),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
        ],
      ),
    );
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageButtomSheet();
      },
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeButtomSheet();
      },
    );
  }
}
