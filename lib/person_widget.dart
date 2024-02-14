import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  String nombre;
  String apellido;
  String carrera;
  String promedio;
  
  TextStyle myWidgetTextStyle = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54);

  PersonWidget(this.nombre, this.apellido, this.carrera, this.promedio);

  @override
  Widget build(BuildContext context) {
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
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "images/prueba.jpg",
                      width: 100,
                    )),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: myWidgetTextStyle,
                            textAlign: TextAlign.left,
                            "$nombre $apellido"),
                        Text(
                          carrera,
                          textAlign: TextAlign.left,
                          style: myWidgetTextStyle,
                        ),
                        Text(
                          promedio,
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
