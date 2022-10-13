import 'package:catalunha/app/modules/detalhes/detalhes_bindings.dart';
import 'package:catalunha/app/modules/detalhes/detalhes_page.dart';
import 'package:get/get.dart';

class DetalheRoutes {
  DetalheRoutes._();

  static const home = '/detalhe';

  static final routes = [
    GetPage(
      name: home,
      page: () => DetalhesPage(),
      binding: DetalhesBindings(),
    ),
  ];
}
