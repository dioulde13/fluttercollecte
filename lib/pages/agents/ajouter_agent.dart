import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/agents/liste_agent.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../fonction/button.dart';

class AjouterAgent extends StatefulWidget {
  const AjouterAgent({super.key});

  @override
  AjouterAgentState createState() {
    return AjouterAgentState(); // Corrigé ici
  }
}

class AjouterAgentState extends State<AjouterAgent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Couleur().couleurF0EFF8,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Agent",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ListeAgent()),
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
              "assets/images/mesagent.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: formulaireAgent(),
        bottomNavigationBar: footer(context));
  }

  formulaireAgent() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
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
              "Formulaire de création",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Divider(),
            Form(
              // key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Nom agent *"),
                  const SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    // controller: nomExpediteurController,
                    decoration: InputDecoration(
                      hintText: "Nom agent",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le nom";
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(height: 5),
                  const Text("Prénom agent *"),
                  const SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    // controller: nomRecepteurController,
                    decoration: InputDecoration(
                      hintText: "Prénom agent",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le prénom";
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
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
                  const Text("Adresse *"),
                  const SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    // controller: nomRecepteurController,
                    decoration: InputDecoration(
                      hintText: "Adresse",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez saisir le prénom";
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
            customButton(
                () {},
                "Enregistrer",
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
}
