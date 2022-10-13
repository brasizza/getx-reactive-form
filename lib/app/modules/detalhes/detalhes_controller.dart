// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:catalunha/app/data/repositories/cep_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetalhesController extends GetxController {
  final cepEC = TextEditingController();
  final lograrouroEC = TextEditingController();
  final cidadeEC = TextEditingController();
  final localidadeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final CepRepository _repository;
  DetalhesController({
    required CepRepository repository,
  }) : _repository = repository;

  @override
  void onInit() async {
    debugPrint('Carregou o onInit');
    String cep = Get.arguments['cep'] ?? '';
    final cepModel = await _repository.getCep(cep);
    cepEC.text = cepModel?.cep ?? '';
    lograrouroEC.text = cepModel?.logradouro ?? '';
    localidadeEC.text = cepModel?.localidade ?? '';
    cidadeEC.text = cepModel?.uf ?? '';
    super.onInit();
  }

  @override
  void onClose() {
    cepEC.dispose();
    lograrouroEC.dispose();
    cidadeEC.dispose();
    localidadeEC.dispose();
    super.onClose();
  }
}
