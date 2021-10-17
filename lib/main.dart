import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:vaccinations/model/data.dart';
import 'package:vaccinations/pages/auth_page.dart';
import 'package:vaccinations/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Data())],
      child: MaterialApp(
        title: "Вакцинация",
        initialRoute: "/",
        routes: {
          "/" : (context) =>  AuthPage(),
          "/main" : (context) => const MyHomePage(title: "Ваша вакцинация")
        },
        //home: MyHomePage(title: "Ваша вакцинация"),
        /*theme: ThemeData(
          
        ),*/
      ),
    );
  }
}
