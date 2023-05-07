import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/features/feature1/controller/feature1.dart';

class F1HomePage extends StatelessWidget {
  const F1HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature 1')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<Feature1>().featureValue.toString()),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Modular.get<Feature1>().addOne();
              },
              child: const Text('Add value'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.get<Feature1>().subtractOne();
              },
              child: const Text('Subtract value'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushReplacementNamed('/f2/');
              },
              child: const Text('Go to feature 2'),
            ),
          ],
        ),
      ),
    );
  }
}
