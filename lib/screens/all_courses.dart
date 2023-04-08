import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  final ref = FirebaseDatabase.instance.ref('Courses');

  @override
  Widget build(BuildContext context) {
    print(2);
    return FirebaseAnimatedList(
            query: ref,
            itemBuilder: (context, snapshot, animation, index) {
              return courseListTile(
                  /*snapshot.child('key').value.toString(),*/
                  snapshot.child('grade').value.toString(),
                  '${snapshot.child('members').value.toString()} / 20');
            });
  }
}

ListTile courseListTile(/*String title,*/ String subtitle, String trailing) {
  print(1);
  return ListTile(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    //title: Text(title),
    subtitle: Text(subtitle),
    trailing: Text(trailing),
    tileColor: Colors.grey[200],
  );
}
