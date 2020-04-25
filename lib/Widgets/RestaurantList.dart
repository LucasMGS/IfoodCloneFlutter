import 'package:flutter/material.dart';
import 'package:ifoodclone/models/RestaurantItem.dart';

class RestaurantList extends StatelessWidget {
  final List<RestaurantItem> restaurantItems;

  RestaurantList({this.restaurantItems});

  Widget subtitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11,
        color: Color.fromRGBO(102, 102, 102, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.of(context).size.height;

    return Container(
      height: y * 0.55,
      child: ListView.builder(
        itemCount: restaurantItems.length,
        itemBuilder: (context, index) {
          final imageURL = restaurantItems[index].imageURL;
          final restName = restaurantItems[index].name;
          final restType = restaurantItems[index].type;
          final restRating = restaurantItems[index].rating;
          final restDistance = restaurantItems[index].distance;
          final restPrice = restaurantItems[index].deliveryPrice;
          final restTime = restaurantItems[index].time;

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromRGBO(217, 217, 217, 1),
                style: BorderStyle.solid,
                width: 0.5,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  blurRadius: 0.7,
                  offset: Offset(-0.5, 1),
                  spreadRadius: 0.2,
                )
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 65,
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imageURL),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            restName,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Color.fromRGBO(255, 200, 51, 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Text(
                                  restRating,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 200, 60, 1),
                                  ),
                                ),
                              ),
                              subtitle(' • ' + restType + ' • '),
                              subtitle(restDistance),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              subtitle(restTime + ' • '),
                              Text(
                                restPrice,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: restPrice != 'Grátis'
                                      ? Color.fromRGBO(102, 102, 102, 1)
                                      : Color.fromRGBO(0, 128, 0, 0.7),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
