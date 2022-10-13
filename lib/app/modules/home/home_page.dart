import 'package:catalunha/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final cepEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Pesquisa de cep',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: cepEC,
              decoration: const InputDecoration(label: Text('Cep')),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(AppPages.DETALHE, arguments: {'cep': cepEC.text});
              },
              child: const Text("Pesquisar"))
        ],
      ),
    );
  }
}
