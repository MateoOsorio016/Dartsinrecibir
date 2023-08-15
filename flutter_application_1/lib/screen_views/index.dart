import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/listview.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My list"),
        backgroundColor: const Color.fromARGB(255, 214, 159, 159),
      ),
      body: GestureDetector(
        onTap: () {
          final route = MaterialPageRoute(
            builder: (context) => const MyList(),
          );
          Navigator.push(context, route);
        },
        child: const Center(
          child: Text("Tap here to navigate"),
        ),
      ),
    );
  }
}
