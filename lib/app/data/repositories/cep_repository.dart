import 'package:catalunha/app/data/models/cep_model.dart';
import 'package:get/get_connect.dart';

class CepRepository extends GetConnect {
  Future<CepModel?> getCep(String cep) async {
    String url = "https://viacep.com.br/ws/$cep/json/";
    final response = await get(url);

    if (response.isOk) {
      return CepModel.fromMap(response.body);
    }
    return null;
  }
}
