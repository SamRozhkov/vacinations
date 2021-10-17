import 'package:flutter/material.dart';
import 'package:vaccinations/pages/vaccina_info.dart';
import 'package:provider/provider.dart';
import 'package:vaccinations/model/data.dart';

class VaccinaItem extends StatelessWidget {
  
  Map<String, dynamic> item;
  bool qr =  false;

  VaccinaItem({Key? key, required Map<String, dynamic> this.item, required this.qr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic vaccina = context.read<Data>().vaccina_info["covid"];
    return Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        child: InkWell(
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VaccinaInfo(id: "id", qr: this.qr, title: item['title'], vaccina: vaccina,)))
                },
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    //radius: 180,
                    backgroundImage: Image.asset(
                      'assets/images/med_icon.png',
                      fit: BoxFit.cover,
                    ).image,
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text(item['title']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                      item['date'],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                      Text(
                        item['body'],
                        style: TextStyle(color: Colors.black.withOpacity(0.6))
                      )
                    ],)
                ),
              ],
            )));
  }
}
