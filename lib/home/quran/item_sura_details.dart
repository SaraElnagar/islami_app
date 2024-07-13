import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;
  int index;

  ItemSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      '$content (${index + 1})',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
