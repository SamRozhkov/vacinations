import 'package:flutter/material.dart';
import 'package:vaccinations/pages/calendar.dart';
import 'package:vaccinations/pages/family.dart';
import 'package:vaccinations/pages/recording.dart';
import 'package:vaccinations/pages/vaccinations_list.dart';
import 'package:provider/provider.dart';
import "package:vaccinations/model/data.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  int _active_item = 0;
  final screens = [
    VaccinationsList(),
    const Calendar(),
    Family(),
    const Recording()
  ];

  void _onTapBottomItem(int index) {

    setState(() {
      _active_item = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      
          backgroundColor: Color.fromARGB(255, 10, 47, 53),
          actions: [
            PopupMenuItem(
              child: PopupMenuButton(
                onSelected: (item) => {},
                //color: Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
                itemBuilder: (context) => [
                  PopupMenuItem(
                      value: 0,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: Image.asset(
                            "assets/images/Woman_avatar.jpg",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        title: const Text("Елена Сергеевна"),
                      )),
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: Image.network(
                            "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        title: const Text("Рожков Семен"),
                      )
                  )
                ],
                icon: CircleAvatar(
                    backgroundImage: Image.asset(
                  "assets/images/Woman_avatar.jpg",
                  fit: BoxFit.cover,
                ).image),
              ),
            )
          ]),
      body: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          //transitionBuilder: AnimatedSwitcher.defaultLayoutBuilder(currentChild, previousChildren),
          child: IndexedStack(
            alignment: AlignmentDirectional.bottomCenter,
            index: _active_item,
            children: screens,
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _active_item,
        onTap: _onTapBottomItem,
        //selectedItemColor: const Color.fromARGB(255, 255, 202, 122),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Прививки',
              backgroundColor: Color.fromARGB(255, 10, 47, 53)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'Профосмотр',
              backgroundColor: Color.fromARGB(255, 10, 47, 53)),
          BottomNavigationBarItem(
              icon: Icon(Icons.family_restroom),
              label: 'Семья',
              backgroundColor: Color.fromARGB(255, 10, 47, 53)),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_active),
              label: 'Путишествие',
              backgroundColor: Color.fromARGB(255, 10, 47, 53))
        ],
      ),
    );
  }
}
