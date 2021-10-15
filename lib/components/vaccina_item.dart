import 'package:flutter/material.dart';
import 'package:vaccinations/pages/vaccina_info.dart';

class VaccinaItem extends StatelessWidget {
  Map<String, dynamic> item;

  VaccinaItem({Key? key, required Map<String, dynamic> this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        child: InkWell(
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VaccinaInfo(id: "id")))
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
                  subtitle: Text(
                    item['date'],
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            )));
  }
}
