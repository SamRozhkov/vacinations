import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class VaccinaInfo extends StatelessWidget {
  String? id;
  String? url;
  bool? qr;
  String title;
  Map<String, String>? vaccina;


  VaccinaInfo({Key? key, this.id, required this.qr, this.url, required this.title, this.vaccina}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(title),
      ),
      body: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.network(
                    "https://caa-network.org/wp-content/uploads/2020/04/image-from-rawpixel-id-2282543-jpeg-scaled.jpg" ,
                    fit: BoxFit.fitWidth),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Visibility(visible: qr?? false , child: Text("Пройдено 22.01.2021", style: TextStyle(color: Colors.red, fontSize: 20.0), textAlign: TextAlign.left)),
                    Text(
                        "COVID-19 - отенциально тяжёлая острая респираторная инфекция, вызываемая коронавирусом SARS-CoV-2 (2019-nCoV). Представляет собой опасное заболевание, которое может протекать как в форме острой респираторной вирусной инфекции лёгкого течения, так и в тяжёлой форме. Вирус способен поражать различные органы через прямое инфицирование или посредством иммунного ответа организма. Наиболее частым осложнением заболевания является вирусная пневмония, способная приводить к острому респираторному дистресс-синдрому и последующей острой дыхательной недостаточности, при которых чаще всего необходимы кислородная терапия и респираторная поддержка. В число осложнений входят полиорганная недостаточность, септический шок и венозная тромбоэмболия. К наиболее распространённым симптомам заболевания относятся повышенная температура тела, утомляемость и сухой кашель. В редких случаях поражение вирусом детей и подростков, предположительно, может приводить к развитию воспалительного синдрома. Также возможны долгосрочные осложнения, называемые постковидным синдромом."),
                  ],
                ),
              ),
              Container(
                child:  qr?? false ? QrImage(
                  data: "asdasdasdasdasdasd asd asd asd asda sdas dasd asda sda",
                  size: 200.0,
                ) : null,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(onPressed: ()=>{}, icon: const Icon(Icons.question_answer), label: Text("Вопрос специалисту"))
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
