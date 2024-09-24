import 'package:collecterfond/pages/ModifierProfil/modifier.dart';
import 'package:collecterfond/pages/accueil/pageAccueil.dart';
import 'package:flutter/material.dart';
import '../couleur/liste_couleur.dart';

footer(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 8, bottom: 15),
    width: MediaQuery.of(context).size.width,
    height: 60,
    decoration: BoxDecoration(
      color: Couleur().couleurBlue, // Couleur de fond du container
    ),
    child: Row(
      children: [
        // Premier bouton avec une image (home)
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              // Redirection vers la page d'accueil
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const AccueilPage(),
                ),
              );
            },
            child: Image.asset("assets/images/home.png"), // Image home
          ),
        ),
        // Cercle avec une icône au centre
        Container(
          height: 70,
          width: 70,
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Couleur extérieure du cercle
          ),
          child: Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Couleur().couleurBlue, // Couleur intérieure du cercle
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Couleur().couleurJaune,
                ),
              ),
            ),
          ),
        ),

        // Second bouton avec une image (paramètres)
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              // Redirection vers la page de modification
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Modifier(),
                ),
              );
            },
            child:
                Image.asset("assets/images/paramètre.png"), // Image paramètres
          ),
        ),
      ],
    ),
  );
}
