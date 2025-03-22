import 'package:exchange_rate/c_change.dart';
import 'package:exchange_rate/lhs_page.dart';
import 'package:exchange_rate/rhs_page.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/dataset.dart';
import 'package:exchange_rate/cdata.dart';
import 'package:provider/provider.dart';

class Midsplit extends StatefulWidget {
  const Midsplit({super.key});

  @override
  State<Midsplit> createState() => _MidsplitState();
}

class _MidsplitState extends State<Midsplit> {
  final TextEditingController primary = TextEditingController();

  final TextEditingController secondary = TextEditingController();

  var ono = 1;
  var ont = 0;

  var set2 = 1;

  void onChange2(String value, set1, set2) {
    (value == '')
        ? primary.text = ''
        : primary.text = (double.parse(value) * sd[set1][set2]).toString();
  }

  void onChange1(String value, set1, set2) {
    (value == '')
        ? secondary.text = ''
        : secondary.text = (double.parse(value) / sd[set1][set2]).toString();
  }

  Widget butfun(text) {
    return IconButton(
      iconSize: 300,
      onPressed: () {
        if (ono == 1) {
          primary.text += text;
          onChange1(
            primary.text,
            Provider.of<Cchange>(context, listen: false).set1,
            Provider.of<Cchange>(context, listen: false).set2,
          );
        } else if (ont == 1) {
          secondary.text += text;
          onChange2(
            secondary.text,
            Provider.of<Cchange>(context, listen: false).set1,
            Provider.of<Cchange>(context, listen: false).set2,
          );
        }
      },
      icon: Text(text, style: TextStyle(fontSize: 22)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var set1 = Provider.of<Cchange>(context).set1;
    var set2 = Provider.of<Cchange>(context).set2;
    var setCoun1 = ((cCode[set1.toString()].toString()).substring(
      4,
    )).split(' ');
    var setCoun2 = ((cCode[set2.toString()].toString()).substring(
      4,
    )).split(' ');
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Card(
                color: Color.fromRGBO(213, 133, 133, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                  child: TextFormField(
                    onTap: () {
                      ono = 1;
                      ont = 0;
                    },
                    controller: primary,
                    /*onChanged: (value) {
                      set1 += 1;
                      setState(() {});
                      set2 += 2;
                    },*/
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 23),
                      hintText: cCode[set1.toString()],
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Left();
                        },
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(35),
                        right: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 10,
                          ),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(
                              'lib/assert/flags/${cCode[set1.toString()]}.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(setCoun1[0], style: TextStyle(fontSize: 12)),
                              Text(
                                (cCode[set1.toString()].toString()).substring(
                                  0,
                                  3,
                                ),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(setCoun1[1], style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Image.asset('lib/assert/eimgs/path3.png', width: 25),
                ),
                //Icon(Icons.compare_arrows, size: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Right();
                        },
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(35),
                        left: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(setCoun2[0], style: TextStyle(fontSize: 12)),
                              Text(
                                (cCode[set2.toString()].toString()).substring(
                                  0,
                                  3,
                                ),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(setCoun2[1], style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 10,
                          ),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(
                              'lib/assert/flags/${cCode[set2.toString()]}.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Card(
                color: Color.fromRGBO(213, 133, 133, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(300),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: TextField(
                    onTap: () {
                      ono = 0;
                      ont = 1;
                    },
                    controller: secondary,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 23),
                      hintText: cCode[set2.toString()],
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 30),
          color: Color.fromRGBO(239, 138, 138, 1),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      iconSize: 33,
                      onPressed: () {
                        primary.text = '';
                        secondary.text = '';
                      },
                      icon: Icon(Icons.fast_rewind_rounded),
                    ),

                    IconButton(
                      iconSize: 30,
                      onPressed: () {
                        if (ono == 1) {
                          primary.text = primary.text.substring(
                            0,
                            primary.text.length - 1,
                          );
                          onChange1(primary.text, set1, set2);
                        } else if (ont == 1) {
                          secondary.text = secondary.text.substring(
                            0,
                            secondary.text.length - 1,
                          );
                          onChange2(secondary.text, set1, set2);
                        }
                      },
                      icon: Icon(Icons.backspace),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [butfun('1'), butfun('2'), butfun('3')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [butfun('4'), butfun('5'), butfun('6')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [butfun('7'), butfun('8'), butfun('9')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [butfun('00'), butfun('0'), butfun('.')],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
