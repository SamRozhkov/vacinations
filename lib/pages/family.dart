import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vaccinations/pages/family_add.dart';
import 'package:provider/provider.dart';
import "package:vaccinations/model/data.dart";

class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Set<Map<String, dynamic>> users = context.watch<Data>().users;
    return Scaffold(
      body: ListView.builder(
          itemCount: context.watch<Data>().users.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(users.elementAt(index)["name"]),
              //subtitle: Text("asas"),
              trailing: users.elementAt(index)["master"]
                  ? IconButton(
                      enableFeedback: false,
                      onPressed: () => {
                            context
                                .read<Data>()
                                .removeUser(users.elementAt(index))
                          },
                      icon: Icon(Icons.delete))
                  : null,
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
              ),
            );
          }),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddFamily(), fullscreenDialog: false))
        },
      ),
    );
  }
}
