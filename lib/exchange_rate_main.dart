import 'package:exchange_rate/splits.dart';
import 'package:flutter/material.dart';

class ExchangeRateMain extends StatelessWidget {
  const ExchangeRateMain({super.key});

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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help_outline_rounded, size: 30),
          ),
          const SizedBox(width: 10),
        ],
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
        child: Splits(),
      ),
    );
  }
}
