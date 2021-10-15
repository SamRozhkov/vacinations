import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vaccinations/components/vaccina_item.dart';
import 'package:provider/provider.dart';
import 'package:vaccinations/model/data.dart';

class VaccinationsList extends StatefulWidget {
  VaccinationsList({Key? key}) : super(key: key);

  @override
  State<VaccinationsList> createState() => _VaccinationsListState();
}

class _VaccinationsListState extends State<VaccinationsList> {
  //var questions = context.watch<Data>().vaccinations;

  String endpoint = "www.api.stackexchange.com/2.2/questions?" +
      "pagesize=100&order=desc&sort=activity&site=stackoverflow";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var uri = Uri.https("jsonplaceholder.typicode.com", "posts");
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);

      /*setState(() {
        questions = [
          {
            "title": "Первая вакцинация против вирусного гепатита В",
            "date": "01.01.2012",
            "body": "Новорожденные в первые 24 часа жизни",
          },
          {
            "title": "Вакцинация против туберкулеза",
            "date": "01.02.2012",
            "body": "Новорожденные на 3-7 день жизни",
          },
          {
            "title": "Вторая вакцинация против вирусного гепатита В",
            "date": "01.02.2012",
            "body": "Дети 1 месяц",
          },
          {
            "title": "Третья вакцинация против вирусного гепатита В",
            "date": "01.02.2012",
            "body": "Дети 2 месяца",
          },
          {
            "title": "Первая вакцинация против пневмококковой инфекции",
            "date": "01.02.2012",
            "body": "Дети 2 месяца",
          },
          {
            "title": "Первая вакцинация против дифтерии, коклюша, столбняка",
            "date": "01.02.2012",
            "body": "Дети 3 месяца",
          },
          {
            "title": "Первая вакцинация против полиомиелита",
            "date": "01.02.2012",
            "body": "Дети 3 месяца",
          },
          {
            "title":
                "Первая вакцинация против гемофильной инфекции (группы риска)",
            "date": "01.02.2012",
            "body": "Дети 3 месяца",
          }
        ];
        //data;
      });*/
    } else {
      // questions;
    }
  }

  @override
  Widget build(BuildContext context) {
    Set<Map<String, dynamic>> questions = context.watch<Data>().vacinations;
    return ListView.builder(
        itemCount: questions == null ? 0 : questions.length,
        itemBuilder: (context, index) {
          return VaccinaItem(
            item: questions.elementAt(index),
          );
          /*return ListTile(
              title: Text(questions[index]["title"]),
              subtitle: Text("Asked by ${questions[index]["body"]}"));*/
        });
  }
}
