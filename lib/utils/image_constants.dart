import 'package:netflix_clone/model/db_models/db_models.dart';
import 'package:netflix_clone/view/search_page/search_data.dart';

class ImageConstant {
  static String mainLogo = 'assets/images/logos_netflix.png';
  static String homeTopFilmImage = 'assets/images/Rectangle 26.png';
  static String mainLogoIcon = 'assets/images/logos_netflix-icon.png';
  static String addIcon = 'assets/images/ant-design_plus-outlined.png';
  static String infoIcon = 'assets/images/feather_info.png';
  static String whatsApp = 'assets/images/logos_whatsapp.png';
  static String facebook = 'assets/images/logos_facebook.png';
  static String gmail = 'assets/images/Gmail-logo 1.png';
}

class PreviewImage {
  static List image1 = [
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3.png',
    'assets/images/Ellipse 4.png',
    'assets/images/Ellipse 4 (1).png',
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3.png',
  ];
}

class NetflixImageConst {
  static List continueWatch = [
    'assets/images/Rectangle 12.png',
    'assets/images/Rectangle 11 (1).png',
    'assets/images/Rectangle 13 (1).png',
    'assets/images/Rectangle 16 (1).png',
  ];
  static String popularMovie = 'assets/images/Rectangle 14.png';
  static String trendingMovie = 'assets/images/Rectangle 16.png';
  static String popuInCountry = 'assets/images/Rectangle 16 (1).png';

  static List carousalImages = [
    'assets/images/Rectangle 26.png',
    'assets/images/Rectangle 26 (1).png',
    'assets/images/Rectangle 26 (2).png',
  ];

  static List image = [
    ProfileModel(
      name: 'Emenalo',
      profileImage: 'assets/images/Rectangle 2.png',
    ),
    ProfileModel(
      name: 'Oneyaka',
      profileImage: 'assets/images/Rectangle 3.png',
    ),
    ProfileModel(
      name: 'Thelma',
      profileImage: 'assets/images/Rectangle 4.png',
    ),
    ProfileModel(
      name: 'Kids',
      profileImage: 'assets/images/Rectangle 5.png',
    ),
    ProfileModel(
      name: 'Nibin',
      profileImage: 'assets/images/Rectangle 3.png',
    ),
  ];

  static List topSearch = [
    TopSearchModel(
        filmName: 'Citation', imagepath: 'assets/images/Rectangle 21.png'),
    TopSearchModel(
        filmName: 'Olatura', imagepath: 'assets/images/Rectangle 22.png'),
    TopSearchModel(
        filmName: 'Braeking Bad',
        imagepath: 'assets/images/Rectangle 22 (1).png'),
    TopSearchModel(
        filmName: 'The Setup', imagepath: 'assets/images/Rectangle 21 (1).png'),
    TopSearchModel(
        filmName: 'Ozark', imagepath: 'assets/images/Rectangle 21 (2).png'),
    TopSearchModel(
        filmName: 'Governer', imagepath: 'assets/images/Rectangle 22 (2).png'),
    TopSearchModel(
        filmName: 'Your Execellancy',
        imagepath: 'assets/images/Rectangle 21 (3).png'),
  ];
}
