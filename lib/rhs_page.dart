import 'package:exchange_rate/helppage.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/rhs_win.dart';
import 'package:exchange_rate/cdata.dart';

class Right extends StatelessWidget {
  const Right({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Row(
          children: [
            Image.asset('lib/assert/eimgs/g16.png', width: 35),
            const SizedBox(width: 10),
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
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
      body: ListView.builder(
        itemCount: 42,
        itemBuilder: (context, index) {
          return ICard(
            cName: cCode[index.toString()].toString(),
            imgPath: cCode[index.toString()].toString(),
          );
        },
      ),
    );
  }
}
