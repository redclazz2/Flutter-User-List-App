import 'package:flutter/material.dart';
import 'package:flutter_application_1/person.dart';

class PersonWidget extends StatelessWidget {
  final Person myPerson;
  final TextStyle myWidgetTextStyle = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54);

  const PersonWidget(this.myPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    //print(myPerson.firstName);
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[100]!,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(250)),
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
            ),
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(myPerson.imagen),
                            fit: BoxFit.fill))),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: myWidgetTextStyle,
                            textAlign: TextAlign.left,
                            myPerson.nombre),
                        Text(
                          myPerson.carrera,
                          textAlign: TextAlign.left,
                          style: myWidgetTextStyle,
                        ),
                        Text(
                          myPerson.promedio.toString(),
                          textAlign: TextAlign.left,
                          style: myWidgetTextStyle,
                        )
                      ],
                    ),
                  )
                ])
              ]),
            ))
      ],
    );
  }
}
