import 'package:flutter/material.dart';

import 'coffee_widget.dart';

class MeuPrimeiroApp extends StatelessWidget {
  const MeuPrimeiroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 155, 137),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
          ],
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 100),
              child: Text('Its a great day for a coffee!',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            const CoffeeWidget(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, elevation: 40),
              onPressed: () {
                print('olá mundo!');
              },
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
