import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modmob3/TodosPage.dart'; // Sesuaikan dengan lokasi file TodosPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TodosPage(), // Gantilah dengan halaman utama yang ingin Anda tampilkan
    );
  }
}
