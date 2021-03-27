import 'package:flutter/material.dart';

class TextDiscoverGrey extends StatelessWidget {
  final String title;
  final double textSize;

  TextDiscoverGrey({
    @required this.title,
    @required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: textSize,
        color: Colors.grey[700],
      ),
    );
  }
}
