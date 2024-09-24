import 'package:collecterfond/pages/accueil/pageAccueil.dart';
import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/agents/ajouter_agent.dart';
import 'package:collecterfond/pages/agents/infos_agent.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:collecterfond/pages/fonction/button.dart';
import 'package:flutter/material.dart';

class ListeAgent extends StatefulWidget {
  ListeAgent({super.key});

  @override
  ListeAgentState createState() {
    return ListeAgentState();
  }
}

class ListeAgentState extends State<ListeAgent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Mes Agents",
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
        body: Column(
          children: [
            const Divider(
              height: 1,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10, left: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(color: Couleur().couleurBlue),
              child: Center(
                  child: customButton(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AjouterAgent()),
                );
              },
                      "Créer Agent",
                      Couleur().couleurJaune,
                      Colors.white,
                      18,
                      MediaQuery.of(context).size.height / 18,
                      MediaQuery.of(context).size.width,
                      BorderRadius.circular(30),
                      FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Recherche...',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (text) {
                  // Action lors de la saisie
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black26,
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.5)),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024 " + " 10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => InfosAgent()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024 " + " 10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024" + "10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024" + "10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024 " + " 10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024" + "10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024" + "10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/mesagent.png',
                                        width: 30,
                                        height: 30,
                                        // color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "Amadou camara",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+224 623556738",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "14/08/2024" + "10:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))))
          ],
        ),
        bottomNavigationBar: footer(context));
  }
}
