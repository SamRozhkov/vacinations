import 'package:flutter/material.dart';

class  AuthPage extends StatelessWidget {
  AuthPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(child: 
        Column(
          children: [
            Image.network("https://play-lh.googleusercontent.com/FM2aFQ7rRNWIJIfQUCg2g6YDPypC16TpnTdh-CEWU-fkVKjNJBNLBb5SbFqCivpN800=s360-rw"),
            Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [

                ElevatedButton(onPressed: () => {
                  Navigator.pushNamed(context, '/main')
                }, child: Text("Войти"))
              ],
            ))
          ],
        ),),
      ),
    );
  }
}