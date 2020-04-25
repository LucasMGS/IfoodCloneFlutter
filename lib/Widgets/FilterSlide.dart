import 'package:flutter/material.dart';
import 'package:ifoodclone/models/FilterItem.dart';

class FilterSlide extends StatelessWidget {
  final List<FilterItem> filterItems;

  FilterSlide({this.filterItems});

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;

    return Container(
      height: 26,
      width: x,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterItems.length,
        itemBuilder: (context, index) {
          final icon = filterItems[index].icon;

          return Container(
            constraints: BoxConstraints(minWidth: icon != null ? 70 : 90),
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 4, right: 4),
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 230, 230, 0.7),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Container(
              margin: EdgeInsets.only(right: 3),
              constraints: BoxConstraints(
                maxHeight: 70,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    filterItems[index].title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(89, 89, 89, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  icon != null
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: GestureDetector(
                            onTap: () => {},
                            child: Icon(
                              icon != null ? icon : null,
                              size: 16,
                              color: Color.fromRGBO(89, 89, 89, 1),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
