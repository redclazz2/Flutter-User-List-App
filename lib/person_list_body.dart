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
    Person("Sebastián", "Zárate", "Ing. Sistemas", 2.4, "images/prueba.jpg"),
    Person("Fabian", "Gonzalez", "Ing.Sistemas", 4, "images/camilo.jpg"),
    Person("John", "Fletcher", "Ing.Ambiental", 3.87, "images/john.jpg"),
    Person("Valentina", "Sarmiento", "Microbiologia", 5, "images/valentina.jpg"),
    Person("Jose", "Cabrera", "Ing.Sistemas", 4.82, "images/jose.jpg"),
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
