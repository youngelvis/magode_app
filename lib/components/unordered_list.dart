// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       const Text("• "),
        Expanded(
          child: Text(text,
          style: TextStyle(
            fontSize: 17,
            color: color.AppColor.homePageSubtitle
          ),),
        ),
      ],
    );
  }
}