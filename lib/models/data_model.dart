class DataModel {
  final String imageUrl;
  final String sale;
  final String title;
  final String subTitle;

  DataModel(
      {required this.imageUrl,
      required this.sale,
      required this.title,
      required this.subTitle});
}

final List<DataModel> imagePaths = [
  DataModel(
      imageUrl: 'assets/images/Component_1.jpg',
      sale: 'Скидка - 15%',
      title: 'Сыворотка',
      subTitle: 'Muse Serum Supreme'),
  DataModel(
      imageUrl: 'assets/images/Component_2.jpg',
      sale: 'Скидка - 20%',
      title: 'Крем',
      subTitle: 'Unstress Revitalizing Toner'),
  DataModel(
      imageUrl: 'assets/images/Component_3.jpg',
      sale: 'Скидка - 30%',
      title: 'Крем',
      subTitle: 'Unstress Total Serenity Serum'),
  DataModel(
      imageUrl: 'assets/images/Component_4.jpg',
      sale: 'Скидка - 45%',
      title: 'Сыворотка',
      subTitle: 'eve & nick serum'),
  DataModel(
      imageUrl: 'assets/images/Component_5.jpg',
      sale: 'Скидка - 150%',
      title: 'Сыворотка',
      subTitle: 'eve & nick serum'),
];
