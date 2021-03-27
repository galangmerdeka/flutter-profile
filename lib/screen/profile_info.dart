import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile_app/widget/profile_info_personal.dart';
import 'package:my_profile_app/widget/profile_info_photo.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.3,
      padding: EdgeInsets.all(15),
      width: double.infinity,
      // color: Colors.white,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            padding: EdgeInsets.all(5),
            // color: Colors.blue,
            child: Container(
              child: Row(
                children: <Widget>[
                  ProfileInfoPhoto(),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: ProfileInfoPersonal(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'CHAT',
                        style: Theme.of(context).textTheme.display1,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'FOLLOW',
                        style: Theme.of(context).textTheme.display2,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
