import 'package:flutter/material.dart';
import 'package:modular_test/core/controller/core_controller.dart';

class Feature1 extends ChangeNotifier {
  double featureValue = 0;
  final CoreController coreController;

  Feature1(this.coreController);

  void addOne() {
    featureValue = coreController.addOne(featureValue);
    notifyListeners();
  }

  void subtractOne() {
    featureValue = coreController.subtractOne(featureValue);
    notifyListeners();
  }
}
