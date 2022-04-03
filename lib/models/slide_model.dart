class SlideModel {
  final slideList = [
    Slide(
      imageUrl: 'lib/assets/images/Group_127.jpg',
      title: 'Travelplus',
      description:
          'Make your Private Travel Plan',
    ),
    Slide(
      imageUrl: 'lib/assets/images/undraw_Environmental_study_re_q4q8.png',
      title: 'Design Interactive',
      description:
          'Lorem ipsum ',
    ),
    Slide(
      imageUrl: 'lib/assets/images/undraw_A_day_at_the_park_re_9kxj.png',
      title: 'It\'s Just',
      description:
          'Lorem ipsum',
    ),
  ];
}

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
