import 'package:flutter/material.dart';
import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigator/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navigator/Pages/AboutPage/AboutpageVM.dart';

class AboutPage extends StatefulWidget {
  // create a constutor and declare the required parameter  data to the AboutPage
  const AboutPage({
    super.key,
    required this.data,
  });
  // Declare a variable data with type as int and make it as final
  final int data;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  // Create a instance of class AboutPageVM and make it as late then pass the parameter to the constructor
  late final AboutPageVM _instan = AboutPageVM(number: widget.data);

  /* Invoke the initState() */
  @override
  void initState() {
    super.initState();

    // Using instance of class AboutPageVM access the navigationstream and create a lister event
    _instan.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPop
      if (event is NavigatorPop) {
        // Invoke the pop() by context.pop
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AboutPage"),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 60,
          child: Text(
            // Display the number by accessing the number attribute of instance
            "${_instan.number}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _instan.gobackhome,
        label: const Text("Go to Home"),
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}
