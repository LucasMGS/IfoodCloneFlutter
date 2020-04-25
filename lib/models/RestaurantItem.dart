class RestaurantItem {
  String imageURL;
  String name;
  String type;
  String distance;
  String time;
  String deliveryPrice;
  String rating;

  RestaurantItem(
      {this.name,
      this.type,
      this.distance,
      this.time,
      this.deliveryPrice,
      this.rating,
      this.imageURL});
}
