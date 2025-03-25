import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is a offline Currency Converter application. It updates its database when you open the application if it is necessary according to your network signal strength. ',
            ),
            const SizedBox(height: 10),
            const Wrap(
              runSpacing: 10,
              children: [
                Text('Note: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  'since it is offline application the conversion in this app will be reference, the currency value may change in points. ',
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Card(
                elevation: 1,
                color: Color.fromRGBO(240, 230, 246, 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Databased update: [24/03/25]',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.download_done_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              child: const Text(
                'See app brief and creators',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(91, 93, 216, 1),
                ),
              ),
              onTap: () {
                launchUrlString(
                  'https://arunguru00.github.io/exchange_rate_web/',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
