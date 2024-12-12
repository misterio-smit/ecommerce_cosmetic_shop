class CardModel {
  String imageUrl;
  String category;
  String description;
  String price;

  CardModel({
    required this.imageUrl,
    required this.category,
    required this.description,
    required this.price,
  });
}

List<CardModel> newCard = [
  CardModel(
      imageUrl: 'assets/images/антистрес.png',
      category: 'Сыворотка',
      description: 'Unstress Total Serenity Serum',
      price: '10 195'),
  CardModel(
      imageUrl: 'assets/images/тоник.png',
      category: 'Тоник',
      description: 'Unstress Revitalizing Toner',
      price: '3095'),
  CardModel(
      imageUrl: 'assets/images/мус.png',
      category: 'Крем',
      description: 'Muse Serum Supreme',
      price: '1595'),
  CardModel(
      imageUrl: 'assets/images/мус.png',
      category: 'Сыворотка',
      description: 'Unstress Total Serenity Serum',
      price: '10 195'),
  CardModel(
      imageUrl: 'assets/images/тоник.png',
      category: 'Тоник',
      description: 'Unstress Revitalizing Toner',
      price: '3095'),
  CardModel(
      imageUrl: 'assets/images/антистрес.png',
      category: 'Крем',
      description: 'Muse Serum Supreme',
      price: '1595'),
  CardModel(
      imageUrl: 'assets/images/антистрес.png',
      category: 'Сыворотка',
      description: 'Unstress Total Serenity Serum',
      price: '10 195'),
  CardModel(
      imageUrl: 'assets/images/тоник.png',
      category: 'Тоник',
      description: 'Unstress Revitalizing Toner',
      price: '3095'),
  CardModel(
      imageUrl: 'assets/images/мус.png',
      category: 'Крем',
      description: 'Muse Serum Supreme',
      price: '1595'),
  CardModel(
      imageUrl: 'assets/images/мус.png',
      category: 'Сыворотка',
      description: 'Unstress Total Serenity Serum',
      price: '10 195'),
];

List<CardModel> stocksCard = [
  CardModel(
      imageUrl: 'assets/images/мус.png',
      category: 'Сыворотка',
      description: 'Unstress Total Serenity Serum',
      price: '10 195'),
  CardModel(
      imageUrl: 'assets/images/тоник.png',
      category: 'Тоник',
      description: 'Unstress Revitalizing Toner',
      price: '3095'),
  CardModel(
      imageUrl: 'assets/images/антистрес.png',
      category: 'Крем',
      description: 'Muse Serum Supreme',
      price: '1595'),
];

List<CardModel> hitsCard = [
  CardModel(
      imageUrl: 'assets/images/сывороткаа.png',
      category: 'Сыворотка',
      description: 'Forever Young-Total Renewal Serum',
      price: '10 197'),
  CardModel(
      imageUrl: 'assets/images/тоник.png',
      category: 'Тоник',
      description: 'Unstress Revitalizing Toner',
      price: '3095'),
  CardModel(
      imageUrl: 'assets/images/маска.png',
      category: 'Освежающая маска',
      description: 'Illustious Mask',
      price: '1595'),
];
