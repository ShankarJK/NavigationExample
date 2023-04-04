import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'HomePageModel.g.dart';

class HomePageModel = _HomePageModelBase with _$HomePageModel, NavigationMixin;

// Create a abstract class _HomePageModelBase with mixin Store

abstract class _HomePageModelBase with Store {
  // Create a variable data with int datatype and assign the value 35 to it and make the variable as observable
  @observable
  int data = 35;
}
