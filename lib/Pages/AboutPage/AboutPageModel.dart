import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'AboutPageModel.g.dart';

class AboutPageModel = _AboutPageModelBase
    with _$AboutPageModel, NavigationMixin;

// Create a abstract class AboutPageModel
abstract class _AboutPageModelBase with Store {
  // Create a variable number with datatype int and assign the value
  @observable
  int number = 0;

  /*Declare a setNum() to set the number to the variable number and assign the value of paramter number to variable number  */
  void setNum({required int number}) => this.number = number;
}
