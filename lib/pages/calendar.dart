import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          Card(
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => {},
              child: ListTile(
                contentPadding: EdgeInsets.all(5.0),
                title: Text("Диспансеризация для граждан в возрасте 30 - 40 лет"), 
                subtitle: Text("Вы попадаете в категорию лиц, которым рекомендовано пройти диспансеризацию по возрасту"),
              )),
          ),
          //ListTile(title: Text("asdas"), subtitle: Text("a"),)
        ],));
  }
}
