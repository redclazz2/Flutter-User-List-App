import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/person.dart';
import 'package:flutter_application_1/person_widget.dart';
import 'package:http/http.dart' as http;

class PersonListBody extends StatefulWidget {
  const PersonListBody({super.key});

  @override
  State<PersonListBody> createState() => UserListState();
}

class UserListState extends State<PersonListBody> {
  String sUrl = "https://api.npoint.io/bffbb3b6b3ad5e711dd2";

  Future<List<Person>> getApiData() async {
    List<Person> data = [];

    try {
      final http.Response respuesta = await http.get(Uri.parse(sUrl),
          headers: {'Content-Type': 'application/json; charset=UTF-8'});

      Map<String,dynamic> jsonDecoded = json.decode(respuesta.body);
      jsonDecoded["items"].forEach((p) =>{
        data.add(Person(p["nombre"], p["carrera"], p["promedio"], "assets/images/${p["imagen"]}"))
      }  
      );
    } catch (e) {
      //print(e);
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text("User List App - Sebastián Zárate"),
            ),
            body: FutureBuilder(
                future: getApiData(),
                builder: (context, snapshot) => snapshot.hasData
                    ? ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, index) =>
                            PersonWidget(snapshot.data![index]))
                    : const Center(
                        child: CircularProgressIndicator(),
                      ))));
  }
}
