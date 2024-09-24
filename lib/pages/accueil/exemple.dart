import 'package:flutter/material.dart';

class Exemple extends StatefulWidget {
  const Exemple({super.key});

  @override
  ExempleState createState() {
    return ExempleState();
  }
}

class ExempleState extends State<Exemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            alignment: Alignment.topCenter, // Centre l'élément en haut
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.white,
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4 -
                    30, // Ajuste la position pour que l'ovale chevauche les deux Containers
                child: ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black, // Couleur de la bordure
                        width: 2.0, // Épaisseur de la bordure
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
