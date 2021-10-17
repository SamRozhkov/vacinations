import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Data with ChangeNotifier {
  int _currentUser = 0;
  String url = "c4de-194-247-184-78.ngrok.io";
  var _vacinations = {
    {
      "title": "Первая вакцинация против вирусного гепатита В",
      "date": "01.01.2012",
      "body": "Новорожденные в первые 24 часа жизни",
      "vaccina": "covid"
    },
    {
      "title": "Вакцинация против туберкулеза",
      "date": "01.02.2012",
      "body": "Новорожденные на 3-7 день жизни",
      "vaccina": "covid"
    },
    {
      "title": "Вторая вакцинация против вирусного гепатита В",
      "date": "10.02.2012",
      "body": "Дети 1 месяц",
    },
    {
      "title": "Третья вакцинация против вирусного гепатита В",
      "date": "15.03.2010",
      "body": "Дети 2 месяца",
    },
    {
      "title": "Первая вакцинация против пневмококковой инфекции",
      "date": "15.03.2010",
      "body": "Дети 2 месяца",
    },
    {
      "title": "Первая вакцинация против дифтерии, коклюша, столбняка",
      "date": "10.03.2010",
      "body": "Дети 3 месяца",
    },
    {
      "title": "Первая вакцинация против полиомиелита",
      "date": "01.03.2010",
      "body": "Дети 3 месяца",
    },
    {
      "title": "Первая вакцинация против гемофильной инфекции (группы риска)",
      "date": "01.02.2010",
      "body": "Дети 3 месяца",
    }
  };

  Set<Map<String, dynamic>> _recomend_vaccinations = {
    {
      "title": "COVID-19",
      "date": "01.11.2021",
      "body": "Эпидемиологическая обстановка",
      "vaccina": "covid"
    },
    {
      "title": "Сезонная прививка от Гриппа",
      "date": "18.10.2021",
      "body": "Эпидемиологическая обстановка",
      "vaccina": "gripp"
    }
  };

  Map<String, Map<String, String>>  vaccina_info = {
    "covid": {
      "info": "", 
      "image" : "https://www.caa-network.org/wp-content/uploads/2020/04/image-from-rawpixel-id-2282543-jpeg-scaled.jpg.webp"},
    "gripp": {
      "info": "",
      "image": "https://img.gazeta.ru/files3/201/5929201/iStock_000011220460Small-pic668-668x444-68682.jpg"
    }
  };

  final Set<Map<String, dynamic>> _users = {
    {"name": "Рожкова Елена", "icon": "", "id": 1, "master": false},
    {"name": "Рожков Семен", "icon": "", "id": 2, "master": true},
    //{"name": "Киприченко Алексей", "icon": "", "id": 3, "master": false}
  };

  void loadData() async {
    var uri = Uri.https(url, "rest.php");
    /*var response = await http.post(
      uri, 
      body: {'action': 'get_conf', "inn": "33333"}, 
      headers: {'Content-Type': 'application/json; charset=UTF-8', 'body': "{'action': 'get_conf', 'inn': '33333'}"}
    );*/

/*
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
    }*/
  }


  void removeUser(Map id) {
    _users.remove(id);
    notifyListeners();
  }

  bool addUser(Map<String, dynamic> user){

    _users.add(user);
    notifyListeners();
    return true;
  }

  get users => _users;
  get vacinations => _vacinations;

  get recomend_vaccination => _recomend_vaccinations;

  get vaccinaInfo => vaccina_info;
}
