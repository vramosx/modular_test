import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/core/controller/core_controller.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => CoreController(), export: true),
      ];
}
