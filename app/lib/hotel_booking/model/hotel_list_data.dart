class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/make_a_wish2.jpeg',
      titleTxt: 'Make A Wish Foundation',
      subTxt: 'Singapore, Singapore',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
    ),
    HotelListData(
      imagePath: 'assets/hotel/eden_care_fund.jpeg',
      titleTxt: 'Eden Care Fund - Autism Association',
      subTxt: 'Singapore, Singapore',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
    ),
    HotelListData(
      imagePath: 'assets/hotel/red_cross_floods.jpeg',
      titleTxt: 'Singapore Red Cross Southeast Asia Floods',
      subTxt: 'Singapore, Singapore',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 60,
    ),
    HotelListData(
      imagePath: 'assets/hotel/residential_home_for_children.jpeg',
      titleTxt: 'Residential Home for vulnerable children',
      subTxt: 'Singapore, Singapore',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 170,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hungry_and_helpless.jpeg',
      titleTxt: 'Leave no one HUNGRY and HELPLESS',
      subTxt: 'Singapore, Singapore',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      perNight: 200,
    ),
  ];
}
