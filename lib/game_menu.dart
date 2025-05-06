import 'package:flutter/material.dart';

class GameMenu extends StatelessWidget {
  const GameMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 170, 255),
      appBar: AppBar(
        title: const Text('Selecciona un deporte'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildGameButton(context, '⚽ Fútbol', 'Fútbol'),
            _buildGameButton(context, '🏀 Básquet', 'Básquet'),
            _buildGameButton(context, '🏐 Vóley', 'Vóley'),
          ],
        ),
      ),
    );
  }

  Widget _buildGameButton(BuildContext context, String emoji, String gameName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white24,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: const TextStyle(fontSize: 24),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PlaceholderGameScreen(title: gameName),
            ),
          );
        },
        child: Text('$emoji  $gameName'),
      ),
    );
  }
}

class PlaceholderGameScreen extends StatelessWidget {
  final String title;
  const PlaceholderGameScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juego: $title'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Text(
          'Aquí irá el juego de $title',
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}
