class IntroModel {
  final String title;
  String? description;
  final String image;

  IntroModel({
    required this.title,
    this.description,
    required this.image,
  });
}

final item = [
  IntroModel(
    title: 'Delicious Deliveries, \nRight at Your Doorstep!',
    description:
        'Explore a World of Culinary Delights, \nDelivered Fast and Fresh!',
    image: 'assets/images/intro_image_1.svg',
  ),
  IntroModel(
    title: 'Delicious Deliveries, \nRight at Your Doorstep!',
    description:
        'Explore a World of Culinary Delights, \nDelivered Fast and Fresh!',
    image: 'assets/images/intro_image_2.svg',
  ),
  IntroModel(
    title: 'Choose Your Language',
    // description: '',
    image: 'assets/images/intro_image_3.svg',
  ),
];
