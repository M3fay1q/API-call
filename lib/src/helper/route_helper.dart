import 'package:api_demo/src/view/screens/list/list_screens/price_screen.dart';
import 'package:api_demo/src/view/screens/list/list_screens/rating_screen.dart';
import 'package:get/get.dart';

import '../view/screens/home/home_screen.dart';
import '../view/screens/list/list_screens/product_screen.dart';
import '../view/screens/list/list_screens/description_screen.dart';

class RouteHelper {
  static const String home = '/home';
  static const String product = '/product';
  static const String description = '/description';
  static const String price = '/price';
  static const String rating = '/rating';

  //List of created screens
  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: product,
      page: () => const ProductScreen(),
    ),
    GetPage(
      name: description,
      page: () => const DescriptionScreen(),
    ),
    GetPage(
      name: price,
      page: () => const PriceScreen(),
    ),
    GetPage(
      name: rating,
      page: () => const RatingScreen(),
    ),
  ];
}
