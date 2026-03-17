import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // Config INICIAL do App, como:
      // Router -> rotas de navegação
      // Home -> pagina Inicial
      // ThemeApp -> (Claro/Escuro)
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplos de Widgets de Exibição"),
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            spacing: 16.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explorando o Flutter - Rian",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: const Color.fromARGB(255, 31, 31, 31),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                'https://images.unsplash.com/photo-1773497007741-b0348d3ad123?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
                height: 500,
              ),
              Image.asset('assets/foto.jpg', fit: BoxFit.cover, height: 500),
            ],
          ),
        ),
      ),
    );
  }
}
