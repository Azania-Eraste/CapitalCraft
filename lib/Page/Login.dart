import 'package:flutter/material.dart';
import 'Graphe.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nomController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  String font = 'Times New Roman';
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Text('Deux jours',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              Text('hyn',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 200),
              TextFormField(
                controller: _nomController,
                style: TextStyle(color: Colors.white, fontFamily: font),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Nom',
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontSize: 20),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.white, fontFamily: font),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Mot de passe',
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontSize: 20),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                        // Autres actions à effectuer en réponse au changement d'état
                      });
                    },
                  ),
                  Text('Sauvegarder le mot de passe',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Times New Roman')),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle login
                      print('Name: ${_nomController.text}');
                      print('Password: ${_passwordController.text}');
                    }
                    if (_nomController.text == 'aza' &&
                        _passwordController.text == 'aza') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyGraphPage()),
                      );
                    } else {
                      // Informez l'utilisateur que les informations de connexion sont incorrectes.
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Informations de connexion incorrectes.'),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  child: Text(
                    'Connexion',
                    style:
                        TextStyle(fontFamily: 'Times New Roman', fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Code à exécuter lors du clic sur l'icône
                      print('Icône cliquée !');
                    },
                    child: Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Code à exécuter lors du clic sur l'icône
                      print('Icône cliquée !');
                    },
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Code à exécuter lors du clic sur l'icône
                      print('Icône cliquée !');
                    },
                    child: Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Vous n'avez pas de compte ?",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Times New Roman'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle create account
                    },
                    child: Text(
                      'Créez en un',
                      style: TextStyle(fontFamily: 'Times New Roman'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
