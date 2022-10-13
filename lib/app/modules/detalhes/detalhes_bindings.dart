import 'package:catalunha/app/data/repositories/cep_repository.dart';
import 'package:get/get.dart';

import './detalhes_controller.dart';

class DetalhesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<CepRepository>(CepRepository());
    Get.put(DetalhesController(repository: Get.find()));
  }
}
