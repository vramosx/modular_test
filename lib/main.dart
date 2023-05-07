import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/core/core_module.dart';
import 'package:modular_test/features/feature1/feature1_module.dart';
import 'package:modular_test/features/feature2/feature2_module.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}

class AppModule extends Module {
  @override
  List<Module> get imports =>
      [CoreModule(), Feature1Module(), Feature2Module()];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: Feature1Module()),
        ModuleRoute('/f2', module: Feature2Module()),
      ];
}
