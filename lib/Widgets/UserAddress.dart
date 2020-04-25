import 'package:flutter/material.dart';

class UserAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 7),
      margin: EdgeInsets.only(top: 3),
      width: x,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'R. Fortaleza, 244',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 15,
              color: Colors.red,
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(3),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
