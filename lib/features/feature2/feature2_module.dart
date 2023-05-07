import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/features/feature2/controller/feature2.dart';
import 'package:modular_test/features/feature2/views/f2_home.dart';

class Feature2Module extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Feature2(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const F2HomePage()),
      ];
}
