import 'package:celebrare_assignment/bindings/home_binding.dart';
import 'package:celebrare_assignment/routes/routes_names.dart';
import 'package:get/get.dart';

import '../view/home_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
