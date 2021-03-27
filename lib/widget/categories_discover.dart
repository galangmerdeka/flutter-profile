import 'package:flutter/material.dart';
import 'package:my_profile_app/widget/text_discover_bold.dart';
import 'package:my_profile_app/widget/text_discover_grey.dart';

class CategoriesDiscover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 200,
      child: Column(
        children: [
          Container(
            width: 180,
            height: 100,
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/selfie_1.jpg'),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextDiscoverGrey(
                  title: 'Nature',
                  textSize: 18,
                ),
                TextDiscoverBold(
                  title: 'Let Us Plant More Trees from this Year',
                  textSize: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
