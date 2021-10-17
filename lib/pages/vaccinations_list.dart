import 'package:flutter/material.dart';
import 'package:vaccinations/components/vaccina_item.dart';
import 'package:provider/provider.dart';
import 'package:vaccinations/model/data.dart';
import 'package:vaccinations/pages/add_vaccina.dart';

class VaccinationsList extends StatefulWidget {
  VaccinationsList({Key? key}) : super(key: key);

  @override
  State<VaccinationsList> createState() => _VaccinationsListState();
}

class _VaccinationsListState extends State<VaccinationsList> {
  
  @override
  Widget build(BuildContext context) {

    var data = context.read<Data>().loadData();

    FloatingActionButton _widget = FloatingActionButton(
      key: UniqueKey(), 
      heroTag: null,
      backgroundColor: Color.fromARGB(255, 10, 47, 53), 
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddVaccination()));
      }, 
      );
    
    Set<Map<String, dynamic>> questions = context.watch<Data>().vacinations;
    Set<Map<String, dynamic>> _recomendet_questions = context.watch<Data>().recomend_vaccination;
    
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(tabs: [
            Tab(text: "Рекомендованные",),
            Tab(text: "Пройденые",)
          ],
          
          indicatorColor: Colors.amber,
          labelColor: Colors.black,
          ),
          body: TabBarView(children: [
            Scaffold(body: ListView.builder(
              itemCount: _recomendet_questions == null ? 0 : _recomendet_questions.length,
              itemBuilder: (context, index) {
                return VaccinaItem(
                  item: _recomendet_questions.elementAt(index),
                  qr: false
                );
              }),
              
            ),
            Scaffold(
              body: ListView.builder(
                itemCount: questions == null ? 0 : questions.length,
                itemBuilder: (context, index) {
                  return VaccinaItem(
                    item: questions.elementAt(index),
                    qr: true
                  );
              }),
              floatingActionButton: _widget,)
           ],),
        ),
      ),
      
    );
  }
}
/*
ListView.builder(
        itemCount: questions == null ? 0 : questions.length,
        itemBuilder: (context, index) {
          return VaccinaItem(
            item: questions.elementAt(index),
          );
          /*return ListTile(
              title: Text(questions[index]["title"]),
              subtitle: Text("Asked by ${questions[index]["body"]}"));*/
        }),
        ListView.builder(itemBuilder: (context, index) {
          return Text("asdas");
        })*/