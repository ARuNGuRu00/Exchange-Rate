import 'package:exchange_rate/helppage.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/lhs_win.dart';
import 'package:exchange_rate/cdata.dart';

class Left extends StatelessWidget {
  const Left({super.key});

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
      body: Container(
        height: double.infinity,
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
        child: ListView.builder(
          itemCount: 42,
          itemBuilder: (context, index) {
            return ICard(
              cName: cCode[index.toString()].toString(),
              imgPath: cCode[index.toString()].toString(),
            );
          },
        ),
      ),
    );
  }
}
