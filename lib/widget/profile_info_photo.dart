import 'package:flutter/material.dart';

class ProfileInfoPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/selfie_1.jpg'),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
