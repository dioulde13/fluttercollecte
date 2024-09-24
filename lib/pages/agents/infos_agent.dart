import 'package:collecterfond/pages/accueil/pied_page.dart';
import 'package:collecterfond/pages/agents/liste_agent.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:flutter/material.dart';

class InfosAgent extends StatefulWidget {
  const InfosAgent({super.key});

  @override
  InfosAgentState createState() {
    return InfosAgentState();
  }
}

class InfosAgentState extends State<InfosAgent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Couleur().couleurF0EFF8,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Infos Agent",
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
              "assets/images/paramètres.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(136, 229, 223, 223),
              border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                height: MediaQuery.of(context).size.height / 3.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Détail Agent",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nom"),
                        Text(
                          "Camara",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Prenom"),
                        Text(
                          "Camara",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date de naissance"),
                        Text(
                          "01/02/1984",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lieu de naissance:"),
                        Text(
                          "Conakry",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tel:"),
                        Text(
                          "+224 666 03 04 05",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email:"),
                        Text(
                          "camara01@gmail.com",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Adresse:"),
                        Text(
                          "Ratoma",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Type de pièce"),
                        Text(
                          "Carte d’identité",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Numéro de la pièce"),
                        Text(
                          "00015482665",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Validité"),
                        Text(
                          "25/11/2028",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: footer(context));
  }
}
