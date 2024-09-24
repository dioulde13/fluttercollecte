import 'package:collecterfond/pages/Collecte/formulaire_collecte.dart';
import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HistoriqueCollecte extends StatefulWidget {
  HistoriqueCollecte({super.key});

  @override
  HistoriqueCollecteState createState() {
    return HistoriqueCollecteState();
  }
}

class HistoriqueCollecteState extends State<HistoriqueCollecte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Couleur().couleurF0EFF8,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Historique des collectes",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FormulaireCollecte()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 32,
            ),
          ),
          backgroundColor: Couleur().couleurBlue, // Fix the typo here
          actions: <Widget>[
            Image.asset(
              "assets/images/historique blanc.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: Column(
          children: [
            // Ce conteneur reste fixe en haut
            _searchCollecte(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12, // Couleur de la bordure
                      width: 1.0, // Largeur de la bordure
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      _infoCollecte(),
                      _infoCollecte(),
                      _infoCollecte(),
                      _infoCollecte(),
                      _infoCollecte(),
                      _infoCollecte(),
                      _infoCollecte(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: footer(context));
  }

  _searchCollecte() {
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 10, left: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Rechercher...",
          suffix: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  _infoCollecte() {
    return Container(
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5.5,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12, // Couleur de la bordure
            width: 1.0, // Largeur de la bordure
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   "Collecte",
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black,
            //     fontSize: 16,
            //   ),
            // ),
            // const Divider(
            //   color: Colors.black12,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/historique blanc.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nom",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Prenom",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Telephone",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Montant",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Camara"),
                    Text("Dioulde"),
                    Text("623 56 78 98"),
                    Text("100 000 " + " GNF"),
                    Text("14/08/2024 " + " 10:40"),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
