class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Animal Welfare',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Elderly',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Children & Youth',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Special Needs',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Humanitarian',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'All',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apartment',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Home',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Villa',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Hotel',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Resort',
      isSelected: false,
    ),
  ];
}
