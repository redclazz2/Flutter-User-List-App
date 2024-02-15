import 'package:flutter/material.dart';
import 'package:flutter_application_1/person.dart';
import 'package:flutter_application_1/person_widget.dart';

class PersonListBody extends StatefulWidget {
  const PersonListBody({super.key});

  @override
  State<PersonListBody> createState() => UserListState();
}

class UserListState extends State<PersonListBody> {
  final List<Person> personPopulation = [
    Person("firstName", "lastName", "studyField", 5, "images/prueba.jpg"),
    Person("Sebastian", "Zarate", "Ing.Sistemas", 5, "images/prueba.jpg"),
    Person("Sebastian", "Zarate", "Ing.Sistemas", 5, "images/prueba.jpg"),
    Person("Fabian", "Gonzales", "Ing.Sistemas", 5, "images/prueba.jpg"),
    Person("Fabian", "Gonzales", "Ing.Sistemas", 5, "images/prueba.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("User List App - Sebastián Zárate"),
      ),
      body: Center(
        child: ListView(children: [
          for (Person p in personPopulation) PersonWidget(p),
        ]),
      ),
    ));
  }
}
