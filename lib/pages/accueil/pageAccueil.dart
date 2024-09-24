import 'package:collecterfond/pages/Collecte/formulaire_collecte.dart';
import 'package:collecterfond/pages/Collecte/historique_collecte.dart';
import 'package:collecterfond/pages/ModifierProfil/infos_profil.dart';
import 'package:collecterfond/pages/ModifierProfil/modifier.dart';
import 'package:collecterfond/pages/agents/liste_agent.dart';
import 'package:collecterfond/pages/assistance/page_assistance.dart';
import 'package:collecterfond/pages/fonction/button.dart';
import 'package:collecterfond/pages/fonction/carre_accueil.dart';
import 'package:flutter/material.dart';
import '../connexion/login.dart';
import '../couleur/liste_couleur.dart';
import '../accueil/pied_page.dart';
import 'dart:async';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  AccueilPageState createState() {
    return AccueilPageState();
  }
}

class AccueilPageState extends State<AccueilPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: Couleur().couleurBlueFonce,
          automaticallyImplyLeading: false,
          title: const Text(
            "Bienvenu (e) Mr Camara",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              child: const Icon(
                Icons.menu, // Icône de menu
                color: Colors.white, // Couleur blanche
                size: 40,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Couleur().couleurWhite,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 2.7,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/fondhome.png"),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Un système de Collecte fond de Entreprise",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Text(
                                  "Collecte Gestion et Sécurité",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 11,
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  decoration: BoxDecoration(
                                    color: Couleur().couleurWhite,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        height: 8,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Couleur().couleurBlue,
                                            borderRadius:
                                                const BorderRadius.horizontal(
                                                    right: Radius.circular(30),
                                                    left: Radius.circular(30))),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Compte principal",
                                        style: TextStyle(
                                            color: Couleur().couleurBlue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _afficherSolde();
                                        },
                                        child: const Text(
                                          "AFFICHER LE SOLDE",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 3.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                carreAccueil(context, () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FormulaireCollecte(),
                                    ),
                                  );
                                }, "assets/images/collecte.png", "Collecte",
                                    25),
                                const SizedBox(
                                  width: 30,
                                ),
                                carreAccueil(context, () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HistoriqueCollecte(),
                                    ),
                                  );
                                }, "assets/images/historique.png", "Historique",
                                    25),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                carreAccueil(context, () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ListeAgent(),
                                    ),
                                  );
                                }, "assets/images/mesagent.png", "Mes Agents",
                                    25),
                                const SizedBox(
                                  width: 30,
                                ),
                                carreAccueil(context, () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailAssistance(),
                                    ),
                                  );
                                }, "assets/images/assistance.png", "Assistance",
                                    25),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          carreAccueil(context, () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FormulaireCollecte(),
                              ),
                            );
                          }, "assets/images/collecte.png", "Collecte", 25),
                          carreAccueil(context, () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HistoriqueCollecte(),
                              ),
                            );
                          }, "assets/images/historique.png", "Historique", 25),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          carreAccueil(context, () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListeAgent(),
                              ),
                            );
                          }, "assets/images/mesagent.png", "Mes Agents", 25),
                          carreAccueil(context, () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const DetailAssistance(),
                              ),
                            );
                          }, "assets/images/assistance.png", "Assistance", 25),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width / 1.3,
        backgroundColor: Couleur().couleurF0EFF8,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Couleur().couleurF0EFF8,
              ),
              child: Text(
                'Collecte des fonds',
                style: TextStyle(
                  color: Couleur().couleurBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/mesagent.png",
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InfosProfil()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/mot de pass bleu.png",
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    'Changer le mot de passe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Couleur().couleurBlack,
                      fontSize: 15,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Modifier()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Spacer(),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text(
                  'Déconnexion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Couleur().couleurBlack,
                    fontSize: 24,
                  ),
                ),
                onTap: () {
                  _showContactBottomSheet();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: footer(context),
    );
  }

  _afficherSolde() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Align(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "100 000 " + " GNF",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  customButton(() {
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
                  // TextButton(
                  //   style: TextButton.styleFrom(
                  //     textStyle: Theme.of(context).textTheme.labelLarge,
                  //   ),
                  //   child: const Text('Fermer'),
                  //   onPressed: () {
                  //     Navigator.of(context).pop();
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _showContactBottomSheet() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              const Text(
                "Êtes-vous sûr(e) de vouloir vous déconnecter ?",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Non'),
                    child: const Text(
                      'Non',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      'Oui',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
