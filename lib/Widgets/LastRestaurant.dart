import 'package:flutter/material.dart';
import 'package:ifoodclone/models/HorizontalSliderItem.dart';

class LastRestaurant extends StatelessWidget {
  final List<HorizontalSliderItem> lastRestaurantItems;

  LastRestaurant({this.lastRestaurantItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      height: 65,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lastRestaurantItems.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.2,
                    offset: Offset(-0.2, 0.7),
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              padding: EdgeInsets.only(left: 13, right: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    margin: EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          lastRestaurantItems[index].imageURL,
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 160),
                    alignment: Alignment.centerLeft,
                    height: 50,
                    padding: EdgeInsets.only(left: 9, right: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: 0.3,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          lastRestaurantItems[index].name,
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
