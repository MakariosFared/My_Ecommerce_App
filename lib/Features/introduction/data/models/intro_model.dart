class IntroModel {
  final String title;
  final String description;
  final String image;

  IntroModel({
    required this.title,
    required this.description,
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
    title: 'Delicious Deliveries,',
    description: 'Explore a World of Culinary Delights,',
    image: 'assets/images/intro_image_1.svg',
  ),
  IntroModel(
    title: 'Delicious Deliveries,',
    description: 'Explore a World of Culinary Delights,',
    image: 'assets/images/intro_image_1.svg',
  ),
];
