import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Data with ChangeNotifier {
  var _vacinations = {
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
      "title": "Первая вакцинация против гемофильной инфекции (группы риска)",
      "date": "01.02.2012",
      "body": "Дети 3 месяца",
    }
  };

  final Set<Map<String, dynamic>> _users = {
    {"name": "Рожкова Елена", "icon": "", "id": 1, "master": true},
    {"name": "Рожков Семен", "icon": "", "id": 2, "master": false}
  };

  void removeUser(Map id) {
    _users.remove(id);
    notifyListeners();
  }

  get users => _users;
  get vacinations => _vacinations;
}
