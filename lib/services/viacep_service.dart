import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/address.dart';

class ViaCepService {
  ViaCepService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  Future<Address> search(String cep) async {
    final response = await _client.get(
      Uri.parse('https://viacep.com.br/ws/$cep/json/'),
      headers: const {'Accept': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw Exception('Erro ao consultar o CEP. Código ${response.statusCode}.');
    }

    final data = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    if (data['erro'] == true) {
      throw const FormatException('CEP não encontrado');
    }

    return Address.fromJson(data);
  }
}
