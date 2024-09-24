import 'package:flutter/material.dart';
import '../couleur/liste_couleur.dart';
import '../accueil/pageAccueil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController numeroTelephone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleur().couleurBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/fond Authentification.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: numeroTelephone,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Numéro d'utilisateur",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez saisir le téléphone";
                        } else if (!RegExp(r'^[0-9]+$')
                            .hasMatch(value.replaceAll(".", ""))) {
                          return "Le numéro de téléphone est invalide";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: password,
                      decoration: const InputDecoration(
                        labelText: "Mot de passe",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez entrer un mot de passe";
                        }
                        return null;
                      },
                    ),
                    TextButton(
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  hintText: "Numéro de téléphone",
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Veuillez saisir le téléphone";
                                  } else if (!RegExp(r'^[0-9]+$')
                                      .hasMatch(value.replaceAll(".", ""))) {
                                    return "Le numéro de téléphone est invalide";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Annuler'),
                              child: const Text('Annuler'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Text(
                            "Mot de passe oublié?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AccueilPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Couleur().couleur145127),
                        child: const Text(
                          "Connexion",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // ElevatedButton(
                    //   onPressed: _authenticate,
                    //   style: ElevatedButton.styleFrom(
                    //     padding: EdgeInsets.zero,
                    //     // Supprimez le rembourrage par défaut pour ajuster la hauteur de l'image
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(
                    //           10.0), // Ajustez la valeur du rayon pour définir la bordure
                    //     ),
                    //   ),
                    //   child: Container(
                    //     padding: const EdgeInsets.all(10),
                    //     height: 80, // Définissez la hauteur du bouton ici
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(
                    //           10.0), // Ajustez la valeur du rayon pour définir la bordure
                    //     ),
                    //     child: Image.asset(
                    //       "assets/images/empreintes.jpeg",
                    //       fit: BoxFit
                    //           .cover, // Ajustez le mode de redimensionnement de l'image selon vos besoins
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        color: Couleur().couleur145127,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Copyrght c 2021 | Made with by MV1",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 15,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Couleur().couleurWhite,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(30),
                          left: Radius.circular(30))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
