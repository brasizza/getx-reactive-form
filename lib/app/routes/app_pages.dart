// ignore_for_file: constant_identifier_names

import 'package:catalunha/app/routes/detalhe_routes.dart';

import 'home_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';
  static const DETALHE = '/detalhe';

  static final routes = [
    ...DetalheRoutes.routes,
    ...HomeRoutes.routes,
  ];
}
