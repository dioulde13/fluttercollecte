import 'package:collecterfond/pages/accueil/pageAccueil.dart';
import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:collecterfond/pages/fonction/button.dart';
import 'package:flutter/material.dart';

class Modifier extends StatefulWidget {
  const Modifier({super.key});
  @override
  ModifierState createState() {
    return ModifierState();
  }
}

class ModifierState extends State<Modifier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Couleur().couleurF0EFF8,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Paramètres",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AccueilPage()),
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
              "assets/images/paramètre blanc.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: _formulaireModifierProfil(),
        bottomNavigationBar: footer(context));
  }

  Widget _formulaireModifierProfil() {
    return Container(
        // padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 1.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/mesagent.png",
                      fit: BoxFit.cover,
                      height: 50,
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Mr Oumar Camara",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Agent collecte",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 1,
                color: Colors.black45,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ancien mot de passe",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Ancien mot de passe",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Nouveau mot de passe",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Nouveau mot de passe",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Confirmer mot de passe",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Confirmer mot de passe",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customButton(() {
                      _showModal();
                    },
                        "Modifier",
                        Couleur().couleurJaune,
                        Colors.white,
                        18,
                        MediaQuery.of(context).size.height / 18,
                        MediaQuery.of(context).size.width,
                        BorderRadius.circular(30),
                        FontWeight.bold)
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _showModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Modifier reussi avec success',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Ferme le modal
              },
              child: const Text('Annuler'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Ferme le modal
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
