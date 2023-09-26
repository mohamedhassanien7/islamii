import 'package:flutter/material.dart';

class LanguageButtomSheet extends StatefulWidget {
  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
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
          getSelectedItem('English'),
          getUnSelectedItem('العربية')
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
    return Text(
      text,
      style: TextStyle(fontSize: 24),
    );
  }
}
