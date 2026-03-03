import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          title: Text("Login do Usuário"),
          backgroundColor: const Color.fromARGB(255, 192, 192, 192),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Nome de usuário:"),
                  keyboardType: TextInputType.text,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "E-mail:"),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Senha:"),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "Função não inplementada!",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Color.fromARGB(255, 255, 77, 77),
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 84, 255, 92),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text("Enviar"),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 75.0,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Minha conta",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.balance),
                label: "Saldo",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
