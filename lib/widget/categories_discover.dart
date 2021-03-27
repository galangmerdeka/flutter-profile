import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile_app/widget/text_discover_bold.dart';
import 'package:my_profile_app/widget/text_discover_grey.dart';

class CategoriesDiscover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              // color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.15,
              margin: EdgeInsets.only(
                left: 20,
              ),
              decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/selfie_1.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text("Title"),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text("Subtitle"),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
