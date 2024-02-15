import 'package:flutter/material.dart';
import 'package:flutter_application_1/person.dart';
import 'package:flutter_application_1/person_widget.dart';

class PersonListBody extends StatelessWidget {
  const PersonListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("User List App - Sebastián Zárate"),
      ),
      body: Center(
        child: ListView( children: [
          PersonWidget(Person("Sebastian", "Zarate", "Ing. Sistemas", 5,"images/prueba.jpg")),
          PersonWidget(Person("Sebastian", "Zarate", "Ing. Sistemas",4.56,"images/prueba.jpg")),
        ]),
      ),
    ));
  }
}