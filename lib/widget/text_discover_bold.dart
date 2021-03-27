import 'package:flutter/material.dart';

class TextDiscoverBold extends StatelessWidget {
  final String title;
  final double textSize;

  TextDiscoverBold({
    @required this.title,
    @required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
