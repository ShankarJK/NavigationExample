import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigator/Pages/AboutPage/AboutPageModel.dart';

// Create a class AboutPageVM which extends AboutPageModel
class AboutPageVM extends AboutPageModel {
  /* Create a constructor AboutPageVM with required parameter as number*/
  AboutPageVM({required int number}) {
    // Assign the value of parameter number mutlipled by 2 to this.number
    this.number = number * 2;
  }

  /* Create a gobackhome() to navigate to homecreen */
  void gobackhome() {
    // By using navigationStream add NavigatorPop()
    navigationStream.add(NavigatorPop());
  }
}
