import 'dart:convert';
import 'package:http/http.dart' as http;

Future main() async{
  final json = await fetch();
  // print(json);
  String cotacaoDolar = json['USDBRL']['ask'];
  print('A atual cotação do dolar é de: $cotacaoDolar');
}

Future<Map> fetch() async{
  var url = Uri.parse('https://economia.awesomeapi.com.br/json/last/USD-BRL');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  return json;
}