import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:modmob3/Todos.dart';

class ApiService {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/todos/5';

  Future<Todos> fetchTodos() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
