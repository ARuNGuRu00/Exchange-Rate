import 'package:flutter/material.dart';
import 'package:exchange_rate/cdata.dart';
import 'package:exchange_rate/midsplit.dart';

class ICard extends StatelessWidget {
  final String cName;
  final String imgPath;

  const ICard({super.key, required this.cName, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: () {
          set2 = int.parse((cCountry[cName]).toString());
          print(set2);
          Navigator.of(context).pop();
          recall();
        },
        child: Card(
          margin: EdgeInsets.only(top: 10, right: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(50),
              left: Radius.circular(5),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  cName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/assert/flags/$imgPath.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
