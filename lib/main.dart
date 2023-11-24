import 'package:flutter/material.dart';

// class Player {
//   String? name;
//   Player();
// }

void main() {
  // var lee = Player();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Hello Flutter',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.amber[600],
          ),
          body: const Center(child: Text('Hello world'))),
    );
  }
}
