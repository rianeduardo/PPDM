import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo com Fluttertoast'),
          titleTextStyle: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(255, 61, 61, 61),
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Criado com Sucesso!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 80, 255, 132),
                    textColor: Colors.white,
                    fontSize: 16,
                  );
                },
                child: Text("Criar Exemplo"),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Excluído com Sucesso!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 255, 109, 109),
                    textColor: Colors.white,
                    fontSize: 16,
                  );
                },
                child: Text("Deletar Exemplo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
