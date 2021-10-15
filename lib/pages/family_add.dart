
import 'package:flutter/material.dart';
import "package:vaccinations/model/data.dart";
import "package:provider/provider.dart";

class AddFamily extends StatefulWidget {
  AddFamily({Key? key}) : super(key: key);

  @override
  _AddFamilyState createState() => _AddFamilyState();
}

class _AddFamilyState extends State<AddFamily> {
  final _formKey = GlobalKey<FormState>();
  final fio = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> user = {};
    submitButton(){
      user["name"] = fio.text;
      user["master"] = false;
      context.read<Data>().addUser(user);
      if (_formKey.currentState!.validate())
        Navigator.of(context).pop();  
    } 
    bool action = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Добавить в семью"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
          
          TextFormField(
            validator: (value) {
            if (value!.isEmpty){
              return "ФИО не может быть пустым";
            }
            return null;
          }, controller: fio,
            decoration: const InputDecoration(
                  hintText: "ФИО",
                ),
          ),
          
          ElevatedButton(onPressed: () => submitButton(), child: const Text("Сохранить"))
      ],),
        ),)
    );
  }
}