import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(child: Text(counter.toString(), style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
}
