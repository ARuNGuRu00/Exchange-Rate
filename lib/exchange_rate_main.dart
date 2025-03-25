import 'package:exchange_rate/helppage.dart';
import 'package:exchange_rate/splits.dart';
import 'package:flutter/material.dart';

class ExchangeRateMain extends StatelessWidget {
  const ExchangeRateMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('lib/assert/eimgs/g16.png', width: 35),
            const SizedBox(width: 12),
            const Text(
              'Exchange Rate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Orbitron',
                fontSize: 18,
              ),
            ),
          ],
        ),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return HelpPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.help_outline_rounded, size: 30),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: Splits(),
    );
  }
}
