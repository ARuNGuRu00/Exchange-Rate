import 'package:exchange_rate/exchange_rate_main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exchange_rate/c_change.dart';

void main() {
  runApp(ExchangeRate());
}

class ExchangeRate extends StatelessWidget {
  const ExchangeRate({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cchange(),
      child: MaterialApp(
        title: 'Exchange Rate',
        theme: ThemeData.light(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const ExchangeRateMain(),
      ),
    );
  }
}
