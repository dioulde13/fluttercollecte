import 'package:collecterfond/pages/Collecte/historique_collecte.dart';
import 'package:collecterfond/pages/accueil/pageAccueil.dart';
import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:collecterfond/pages/fonction/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormulaireCollecte extends StatefulWidget {
  const FormulaireCollecte({super.key});

  @override
  FormulaireCollecteState createState() {
    return FormulaireCollecteState();
  }
}

class FormulaireCollecteState extends State<FormulaireCollecte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Couleur().couleurF0EFF8,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Collecte",
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
              "assets/images/paiement blanc.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            formulaireCollecte(),
            const SizedBox(
              height: 150,
            ),
            customButton(() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HistoriqueCollecte()),
              );
            },
                "Voir Historiques",
                Couleur().couleurBlue,
                Colors.white,
                18,
                MediaQuery.of(context).size.height / 18,
                MediaQuery.of(context).size.width / 1.2,
                BorderRadius.circular(30),
                FontWeight.bold)
          ],
        )),
        bottomNavigationBar: footer(context));
  }

  formulaireCollecte() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Formulaire de collecte",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Divider(),
            Form(
              // key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("N° de téléphone *"),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLength: 9,
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Seuls les chiffres sont autorisés
                    ],
                    decoration: InputDecoration(
                      hintText: "N° de téléphone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le téléphone";
                      } else if (value.length != 9) {
                        return "Le numéro de téléphone doit comporter 9 chiffres";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 5),
                  const Text("Montant *"),
                  const SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Seuls les chiffres sont autorisés
                    ],
                    keyboardType:
                        TextInputType.number, // Affiche un clavier numérique
                    decoration: InputDecoration(
                      suffix: const Text("GNF"),
                      hintText: "Montant",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le Montant";
                      }
                      if (double.tryParse(value) == null) {
                        return "Veuillez saisir un nombre valide";
                      }
                      return null;
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            customButton(() {
              _showModal();
            },
                "Transférer",
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
    );
  }

  void _showModalSuccess() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Align(
                child: Column(
              children: [
                Image.asset(
                  "assets/images/valider.png",
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Succès",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Montant: ",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "300 000 " + " GNF",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tel: ",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      " 620 50 31 10",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                customButton(() {
                  // Fermer le modal de succès
                  Navigator.of(context).pop();
                  // Fermer le modal de confirmation
                  Navigator.of(context).pop();
                },
                    "Fermer",
                    Couleur().couleurJaune,
                    Colors.white,
                    18,
                    MediaQuery.of(context).size.height / 18,
                    MediaQuery.of(context).size.width,
                    BorderRadius.circular(30),
                    FontWeight.bold)
              ],
            ))
          ],
        );
      },
    );
  }

  void _showModal() {
    final _formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Formulaire de collecte',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 5),
                  const Align(
                    alignment: Alignment.centerLeft, // Alignement à gauche
                    child: const Text("Insérer OTP *"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Insérer OTP",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le OTP";
                      }
                      if (int.tryParse(value) == null) {
                        return "Veuillez saisir un nombre valide";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Align(
                child: customButton(() {
              _showModalSuccess();
            },
                    "Confirmer",
                    Couleur().couleurJaune,
                    Colors.white,
                    18,
                    MediaQuery.of(context).size.height / 18,
                    MediaQuery.of(context).size.width,
                    BorderRadius.circular(30),
                    FontWeight.bold))
          ],
        );
      },
    );
  }
}
