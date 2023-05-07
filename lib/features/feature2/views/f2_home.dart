import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/features/feature2/controller/feature2.dart';

class F2HomePage extends StatelessWidget {
  const F2HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(title: const Text('Feature 2')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<Feature2>().featureValue.toString()),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Modular.get<Feature2>().addOne();
              },
              child: const Text('Add value'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.get<Feature2>().subtractOne();
              },
              child: const Text('Subtract value'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushReplacementNamed('/');
              },
              child: const Text('Go to feature 2'),
            ),
          ],
        ),
      ),
    );
  }
}
