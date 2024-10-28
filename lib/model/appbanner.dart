import 'package:swork_introduce/model/images.dart';

class Appbanner {
  final int id;
  final String title;
  final String content;
  final String image;

  Appbanner(this.id, this.title, this.content, this.image);

}
//listdata
List<Appbanner> appBannerList =  [
  Appbanner(1, 'Generate Content For Social Post',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      Images.walkThrough_image1),
  Appbanner(2, 'Generate Timeline And Schedule Date Time',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      Images.walkThrough_image2),
  Appbanner(3, 'Using AI Generation With Your Idea',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      Images.walkThrough_image3),
  Appbanner(4, 'Make Your Life Become Easier And Easier',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      Images.walkThrough_image4),
];