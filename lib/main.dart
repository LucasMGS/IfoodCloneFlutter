import 'package:flutter/material.dart';
import 'package:ifoodclone/Widgets/Diversity.dart';
import 'package:ifoodclone/Widgets/LastRestaurant.dart';
import 'package:ifoodclone/Widgets/PromotionSlider.dart';
import 'package:ifoodclone/Widgets/RestaurantList.dart';
import 'package:ifoodclone/models/FilterItem.dart';
import 'package:ifoodclone/models/HorizontalSliderItem.dart';
import 'Widgets/FilterSlide.dart';
import 'Widgets/TitleText.dart';
import 'Widgets/UserAddress.dart';
import 'models/RestaurantItem.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Título da pagina',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

final List<HorizontalSliderItem> lastRestaurantItems = [
  new HorizontalSliderItem(
    name: 'Tio Bák - Alto da glória',
    imageURL:
        'https://static-images.ifood.com.br/image/upload/f_auto,t_high/logosgde/a28df111-2141-4a7d-8817-365b04f0f39f/201909302358_lSqA_.jpeg',
  ),
  new HorizontalSliderItem(
    name: 'Fast Açaí',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTqeh8_63q5l8t61sa5oWAKyZS89_u8ik0lYYD8-coGhXbLZVKa&usqp=CAU',
  ),
  new HorizontalSliderItem(
    name: 'Outback',
    imageURL:
        'https://i1.wp.com/douglaspinturas.com.br/wp-content/uploads/2018/05/outback-logo.jpg?fit=673%2C504&ssl=1',
  ),
];

final List<HorizontalSliderItem> diversityItems = [
  new HorizontalSliderItem(
    name: 'Mercado',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIXmYfTNGgbmsj7A8Qjg4oc4Ab_OdGP2CJbtWpji22qsXPhjOw&usqp=CAU',
  ),
  new HorizontalSliderItem(
    name: 'Promoções',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-pGQPS19dXG9-115m5ezTlOXtT11iBtBlaRbUdomSwTIXxNWa&usqp=CAU',
  ),
  new HorizontalSliderItem(
    name: 'Brasileira',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQOJIcJZXEcq1d_WWfQaGnEq760DTcQsV_Fc77NEBVvr1vSxryC&usqp=CAU',
  ),
  new HorizontalSliderItem(
    name: 'Saudável',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRW72Ryuk70Mvmk0h3dDhGzwUyFKask7BFcH5r7w4ccTP3eHEyM&usqp=CAU',
  ),
];

final List<HorizontalSliderItem> promotionalItems = [
  new HorizontalSliderItem(
    imageURL:
        'https://static-images.ifood.com.br/image/upload/f_auto,q_100/webapp/landing/landing-banner-1',
  ),
  new HorizontalSliderItem(
    imageURL: 'https://pbs.twimg.com/media/Du4VFZZXQAA0aEi.jpg',
  ),
  new HorizontalSliderItem(
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTono3wciIH0LjcU6-584PqkOiOkSc1V1bNyiUCA3djagOWtHub&usqp=CAU',
  ),
];

final List<RestaurantItem> restaurantItems = [
  new RestaurantItem(
      name: 'OutBack - Flamboyant Shopping',
      rating: '4,9',
      type: 'Lanches',
      distance: '0,5 km',
      time: '23-33 min',
      deliveryPrice: 'R\$ 3,99',
      imageURL:
          'https://i1.wp.com/douglaspinturas.com.br/wp-content/uploads/2018/05/outback-logo.jpg?fit=673%2C504&ssl=1'),
  new RestaurantItem(
    name: 'Richesse - Jardim Goiás',
    rating: '4,6',
    type: 'Doces & Bolos',
    distance: '0,9 km',
    time: '9-19 min',
    deliveryPrice: 'Grátis',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqFsi7h832BG3yL6ZSUe9Xoq4optzXK4Z13tv7_gchZWEA7AMd&usqp=CAU',
  ),
  new RestaurantItem(
    name: 'Habib\'s - Flamboyant',
    rating: '3,8',
    type: 'Lanches',
    distance: '3,7 km',
    time: '28-38 min',
    deliveryPrice: 'R\$ 8,90',
    imageURL:
        'https://media.glassdoor.com/sqll/2431780/habib-s-delivery-squarelogo-1576719377118.png',
  ),
  new RestaurantItem(
    name: 'Fast açaí - Alto da Glória',
    rating: '4,8',
    type: 'Açaí',
    distance: '0,1 km',
    time: '9-19 min',
    deliveryPrice: 'Grátis',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTG_xOdh9IFf8Y8PBRxAhE1HUhgYas-NveIy1oMvbRRIlzR12aT&usqp=CAU',
  ),
  new RestaurantItem(
    name: 'Jeronimo - Flamboyant',
    rating: '4,8',
    type: 'Lanches',
    distance: '0,4 km',
    time: '35-45 min',
    deliveryPrice: 'R\$ 9,00',
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0jI-jfnXrCVD7q79FXztkrPqPlH_1m2fyye4t4RvVp59VRsPP&usqp=CAU',
  ),
];

final List<FilterItem> filterItems = [
  new FilterItem(title: 'Filtros', icon: Icons.sort),
  new FilterItem(title: 'Ordenar', icon: Icons.keyboard_arrow_down),
  new FilterItem(title: 'Entrega grátis'),
  new FilterItem(title: 'Distância', icon: Icons.keyboard_arrow_down),
  new FilterItem(title: 'Entrega Ifood'),
  new FilterItem(title: 'Super Restaurante')
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            tabs: <Widget>[
              Tab(
                text: 'Entrega',
              ),
              Tab(
                text: 'Retirada',
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                UserAddress(),
                Diversity(diversityItems: diversityItems),
                PromotionSlider(promotionSliderItems: promotionalItems),
                TitleText(title: 'Últimos restaurantes'),
                LastRestaurant(lastRestaurantItems: lastRestaurantItems),
                SizedBox(height: 5),
                TitleText(title: 'Restaurantes'),
                SizedBox(height: 6),
                FilterSlide(filterItems: filterItems),
                SizedBox(height: 10),
                RestaurantList(restaurantItems: restaurantItems)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
