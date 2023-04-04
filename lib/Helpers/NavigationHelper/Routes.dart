// ignore_for_file: constant_identifier_names, unused_import

import 'package:navigator/Pages/HomePage/HomePage.dart';
import 'package:navigator/Pages/AboutPage/AboutPage.dart';
import 'NavigationHelper.dart';

enum Routes {
  // Declare the screens like HomePage,AboutPage to Routes enum
  HomePage,
  AboutPage
}

class Pages {
  Object? data;

  // create a instance homeScreenConfig of class PageConfig and pass the data and route to the required parameter route and build to the construtor
  static final PageConfig homeScreenConfig = PageConfig(
    route: Routes.HomePage,
    build: (_) => const HomePage(),
  );

  // create a instance aboutScreenConfig of class PageConfig and pass the data and route to the required parameter route and build to the construtor
  static final PageConfig aboutScreenConfig = PageConfig(
    route: Routes.AboutPage,
    build: (_) => AboutPage(data: aboutScreenConfig.data),
  );
}
