import 'package:flutter/material.dart';
import 'package:exchange_rate/cdata.dart';

class ICard extends StatelessWidget {
  final String cName;
  final String imgPath;

  const ICard({super.key, required this.cName, required this.imgPath});
  void onPress() {
    print(cCountry[cName]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: onPress,
        child: Card(
          margin: EdgeInsets.only(top: 10, left: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(50),
              right: Radius.circular(5),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/assert/flags/$imgPath.png'),
                ),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  cName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
