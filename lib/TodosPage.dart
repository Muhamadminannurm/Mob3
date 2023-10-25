import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modmob3/Todos.dart';
import 'package:modmob3/ApiService.dart';

class TodosPage extends StatelessWidget {
  final ApiService apiService = ApiService();
  final Rx<Todos> todos = Rx(Todos.fromJson({
    "userId": 1,
    "id": 2,
    "title": " ",
    "completed": true,
  }));

  Future<void> fetchData() async {
    try {
      final data = await apiService.fetchTodos();
      todos.value = data;
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchData(); // Panggil fetchData langsung dalam build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Obx(() {
          if (todos.value.id == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Text(todos.value.title!);
          }
        }),
      ),
    );
  }
}
