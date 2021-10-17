import 'package:flutter/material.dart';

class Recording extends StatefulWidget {
  const Recording({Key? key}) : super(key: key);

  @override
  _RecordingState createState() => _RecordingState();
}

class _RecordingState extends State<Recording> {
  
  final List<Item> _data = generateItems(20);    
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.0),
        //alignment: Alignment.topCenter,
        child: _buildPanel(),
      ),
    );
  }

    Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Мадагаскар"),
            );
          },
          body: Container(child: Text("Брюшной тиф, Гепатит А и В, Столбняк, Туберкулез, Молярия."),padding: EdgeInsets.all(5.0),),
          isExpanded: true,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Зимбабве"),
            );
          },
          body: Container(child: Text("Брюшной тиф, Гепатит А и В, Столбняк, Туберкулез, Молярия."),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Уганда"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Франция"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Австралия"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Тайланд"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Индия"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Сомали"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Китай"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Конго"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Эквадор"),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: false,
        )
      ]
    );
  }

}
/*
_data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Container(child: Text("dsa"),),
          isExpanded: item.isExpanded,
        );
      }).toList(),
*/
// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

Set<Map<String, String>>countries = {
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
{"country": "Мадагаскар",
"info": "sdfsdfdf"},
};

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'asdas',// ountries.elementAt(index)["country"],
      expandedValue: 'This is item number $index',
    );
  });
}

/*
ExpansionPanelList(
      children: [
        ExpansionPanel(headerBuilder: (BuildContext context, bool b) {
          return ListTile(title: Text("Аргентина"));
        }, body: Container(child:
              Text("asdasd")
        ,)),
        ExpansionPanel(headerBuilder: (BuildContext context, bool b) {
          return ListTile(title: Text("Аргентина"));
        }, body: Container(child:
              Text("asdasd")
        ,))
      ],
    );
  }
*/