import 'package:flutter/material.dart';
import 'package:my_profile_app/widget/categories_discover.dart';
import 'package:my_profile_app/widget/text_discover_bold.dart';
import 'package:my_profile_app/widget/text_discover_grey.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextDiscoverBold(
                title: 'Notable Works',
                textSize: 22,
              ),
              TextDiscoverGrey(
                title: 'Based On The Popularity Articles',
                textSize: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (ctx, i) => Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CategoriesDiscover(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
