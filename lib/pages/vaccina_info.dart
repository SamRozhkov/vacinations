import 'package:flutter/material.dart';

class VaccinaInfo extends StatelessWidget {
  VaccinaInfo({Key? key, String? id}) : super(key: key);
  String id = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text("Информация"),
      ),
      body: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://www.k31.ru/uploads/content/3/fe91a7e744-1.jpg",
                  fit: BoxFit.fitWidth),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                  "Гепатит B  - это инфекционное заболевание печени, вызванное вирусом гепатита типа B. Острая (активная) стадия гепатита В развивается в течение первых 6 месяцев после заражения вирусной инфекцией и может протекать как в очень легкой форме, практически бессимптомно, так и в тяжелой вплоть до госпитализации. Организм человека способен победить вирус, и он исчезает. В некоторых случаях вирус остается на всю жизнь и переходит в хроническую форму (\"вирусоносители\"). Хроническая форма инфицирования также может вызвать серьезные проблемы со здоровьем."),
            )
          ],
        ),
      ),
    );
  }
}
