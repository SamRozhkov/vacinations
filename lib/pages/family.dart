
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
              trailing: !users.elementAt(index)["master"]
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
      floatingActionButtonAnimator: NoScalingAnimation(),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        key: UniqueKey(),
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 10, 47, 53),
        onPressed: () => {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddFamily(), fullscreenDialog: true))
        },
        
      ),
    );
  }
}

class NoScalingAnimation extends FloatingActionButtonAnimator{
  @override
  Offset getOffset({required Offset begin, required Offset end, required double progress}) {
    // TODO: implement getOffset
    return end;
    //throw UnimplementedError();
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    // TODO: implement getRotationAnimation
    //throw UnimplementedError();
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    // TODO: implement getScaleAnimation
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

}