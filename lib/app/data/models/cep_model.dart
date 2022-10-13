// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CepModel {
  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;
  CepModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

  CepModel copyWith({
    String? cep,
    String? logradouro,
    String? bairro,
    String? localidade,
    String? uf,
  }) {
    return CepModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      bairro: bairro ?? this.bairro,
      localidade: localidade ?? this.localidade,
      uf: uf ?? this.uf,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
    };
  }

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'] as String,
      logradouro: map['logradouro'] as String,
      bairro: map['bairro'] as String,
      localidade: map['localidade'] as String,
      uf: map['uf'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CepModel.fromJson(String source) => CepModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CepModel(cep: $cep, logradouro: $logradouro, bairro: $bairro, localidade: $localidade, uf: $uf)';
  }

  @override
  bool operator ==(covariant CepModel other) {
    if (identical(this, other)) return true;

    return other.cep == cep && other.logradouro == logradouro && other.bairro == bairro && other.localidade == localidade && other.uf == uf;
  }

  @override
  int get hashCode {
    return cep.hashCode ^ logradouro.hashCode ^ bairro.hashCode ^ localidade.hashCode ^ uf.hashCode;
  }
}
