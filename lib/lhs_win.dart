import 'package:flutter/material.dart';
import 'package:exchange_rate/c_change.dart';
import 'package:provider/provider.dart';

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
          Provider.of<Cchange>(context, listen: false).changeCoLe(cName);
          Navigator.of(context).pop();
        },
        child: Card(
          elevation: 1,
          color: Color.fromRGBO(240, 230, 246, 1),
          margin: EdgeInsets.only(top: 15, left: 30),
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
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/assert/flags/$imgPath.png'),
                ),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  cName,

                  textAlign: TextAlign.left,
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
