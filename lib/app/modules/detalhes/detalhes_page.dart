import 'package:catalunha/app/modules/detalhes/detalhes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetalhesPage extends StatelessWidget {
  DetalhesPage({Key? key}) : super(key: key);

  final DetalhesController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    debugPrint('Carregou o build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetalhesPage'),
      ),
      body: Form(
        key: controller.formKey,
        child: Column(children: [
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: controller.cepEC,
              decoration: const InputDecoration(label: Text('Cep')),
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: controller.lograrouroEC,
              decoration: const InputDecoration(label: Text('Logradouro')),
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: controller.cidadeEC,
              decoration: const InputDecoration(label: Text('cidade')),
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: controller.localidadeEC,
              decoration: const InputDecoration(label: Text('Localidade')),
            ),
          ),
        ]),
      ),
    );
  }
}
