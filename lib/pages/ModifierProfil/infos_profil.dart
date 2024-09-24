import 'package:collecterfond/pages/accueil/pageAccueil.dart';
import 'package:collecterfond/pages/couleur/liste_couleur.dart';
import 'package:flutter/material.dart';

class InfosProfil extends StatefulWidget {
  const InfosProfil({super.key});

  @override
  InfosProfilState createState() {
    return InfosProfilState();
  }
}

class InfosProfilState extends State<InfosProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleur().couleurF0EFF8,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Infos profil",
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
            "assets/images/mesagent.png",
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      body: _infoProfil(),
    );
  }

  _infoProfil() {
    return Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 4,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/mesagent.png",
                          fit: BoxFit.cover,
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(width: 15),
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
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => AccueilPage()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.black26,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/mesagent.png",
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Nom : ",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Mamadou Dioulde Balde",
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Adresse : ",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "KIPE /Conakry",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Téléphone : ",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "+224 666 01 67 45",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "N° de pièce : ",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "0005051250000027",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
