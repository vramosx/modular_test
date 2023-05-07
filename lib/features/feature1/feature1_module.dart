import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/features/feature1/controller/feature1.dart';
import 'package:modular_test/features/feature1/views/f1_home.dart';

class Feature1Module extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Feature1(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const F1HomePage()),
      ];
}
