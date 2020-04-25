import 'package:flutter/material.dart';
import 'package:ifoodclone/models/HorizontalSliderItem.dart';

class Diversity extends StatelessWidget {
  final List<HorizontalSliderItem> diversityItems;

  Diversity({this.diversityItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: diversityItems.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 13),
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 85,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage(
                          diversityItems[index].imageURL,
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      diversityItems[index].name,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(77, 77, 77, 0.7),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
