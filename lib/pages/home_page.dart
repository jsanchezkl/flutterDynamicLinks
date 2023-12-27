import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/servicios");
              },
              child: const Text('Ir a página 1'),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para el segundo botón
              },
              child: const Text('Generar Link'),
            ),
          ],
        ),
      ),
      
    );
  }
}


