import 'package:flutter/cupertino.dart';
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
        // CategoriesDiscover(),
        Container(
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (ctx, i) => CategoriesDiscover(),
          ),
        ),
      ],
    );
  }
}
