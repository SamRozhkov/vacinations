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
        body: TableCalendar(
      availableCalendarFormats: const {
        CalendarFormat.month: "Месяц",
        CalendarFormat.week: "Неделя",
        CalendarFormat.twoWeeks: "Две недели"
      },
      calendarFormat: CalendarFormat.month,
      focusedDay: DateTime.now(),
      lastDay: DateTime.utc(2022, 1, 1),
      firstDay: DateTime.utc(2011, 1, 1),
      onDaySelected: onDaySelected,
      //eventLoader: List(DateTime.now()),
    ));
  }

  onDaySelected(DateTime day, DateTime day1) => {print("$day , $day1")};
}
