import 'package:flutter/material.dart';
import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigator/Helpers/NavigationHelper/Routes.dart';
import 'package:navigator/Pages/HomePage/HomePageModel.dart';

// Create a class HomePageVM which extends HomePageModel

class HomePageVM extends HomePageModel {
  /*  Declare a method navigateToAbout to navigate to about screen */
  void navigateToAbout() {
    // By using navigationStream add NavigatorPush() and pass the pageConfig and data
    navigationStream
        .add(NavigatorPush(pageConfig: Pages.aboutScreenConfig, data: data));
  }
}
