import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ifoodclone/models/HorizontalSliderItem.dart';

class PromotionSlider extends StatefulWidget {
  final List<HorizontalSliderItem> promotionSliderItems;

  PromotionSlider({this.promotionSliderItems});

  @override
  _PromotionSliderState createState() => _PromotionSliderState();
}

int _currentIndex = 0;

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (int i = 0; i < list.length; i++) {
    result.add(handler(i));
  }
  return result;
}

class _PromotionSliderState extends State<PromotionSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CarouselSlider.builder(
            onPageChanged: (newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            enlargeCenterPage: true,
            height: 140,
            initialPage: 0,
            autoPlay: true,
            itemCount: widget.promotionSliderItems.length,
            itemBuilder: (context, index) {
              return Container(
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.promotionSliderItems[index].imageURL,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(widget.promotionSliderItems, (index) {
              return Container(
                height: _currentIndex == index ? 4 : 3,
                width: _currentIndex == index ? 4 : 3,
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(77, 77, 77, 1)
                      : Colors.grey,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
