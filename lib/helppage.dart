import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exchange Rate',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        elevation: 2,
        backgroundColor: const Color.fromRGBO(235, 104, 120, 1),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(237, 152, 162, 1),
              Color.fromRGBO(241, 223, 223, 1),
            ],
          ),
        ),
        child: Center(child: Text('help page')),
      ),
    );
  }
}
