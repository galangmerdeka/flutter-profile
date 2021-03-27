import 'package:flutter/material.dart';

Widget _buildInformationDetail(String title, String subtitle) {
  return Expanded(
    flex: 1,
    child: Container(
      child: Container(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[800],
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfileInfoPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Mba Cantik nan Imut',
            style: Theme.of(context).textTheme.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'UI Designer',
            style: Theme.of(context).textTheme.subtitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(
            height: 30,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(top: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[300],
              ),
              child: Row(
                children: <Widget>[
                  _buildInformationDetail('Article', '80'),
                  _buildInformationDetail('Followers', '50'),
                  _buildInformationDetail('Rating', '8.0'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
