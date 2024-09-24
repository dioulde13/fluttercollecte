import 'package:flutter/material.dart';
import 'carre_accueil.dart';

Widget carreAccueil(
  BuildContext context,
  VoidCallback onTap, // Add onTap as a parameter
  // Widget redirectionPage,
  String imagePath,
  String text,
  double heigh,
) {
  return InkWell(
    onTap: onTap,
    child: Center(
      child: Container(
        width: 120, // Largeur souhaitée
        height: 100, // Hauteur souhaitée
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            // Couleur de la bordure (noire)
            width: 0.5, // Épaisseur de la bordure
          ),
          borderRadius: BorderRadius.circular(10.0),
          // Rayon des coins arrondis
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
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
                  child: Center(
                    child: Image.asset(
                      imagePath,
                      height: heigh,
                    ),
                  ),
                ),
              ),
              Text(text)
            ],
          ),
        ),
      ),
    ),
  );
}
