import 'package:flutter/material.dart';

class AddVaccination extends StatelessWidget {
  AddVaccination ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Добавить вакцину"),
      ), 
    );
  }
}