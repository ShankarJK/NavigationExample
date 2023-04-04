import 'package:flutter/material.dart';
import 'package:navigator/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigator/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navigator/Pages/HomePage/HomePageVM.dart';

// Create a class HomePage which extends StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Create a Instance _instance of class HomePageVM
  final HomePageVM _instance = HomePageVM();

  /* Invoke the initState() */
  @override
  void initState() {
    super.initState();
    // Using instance of class HomePageVM access the navigationstream and create a lister event
    _instance.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPush
      if (event is NavigatorPush) {
        // Using context.Push(), pass the event pageconfig and data
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // create a AppBar Widget
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 60,
          child: Text(
            // Display the value of data by using instance _instance.data
            "${_instance.data}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        // Declare a onPressed property and invoke the method using  the _instance.navigateToAbout
        onPressed: _instance.navigateToAbout,
        label: const Text("Go to About"),
        icon: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
