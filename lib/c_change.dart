import 'package:flutter/material.dart';
import 'package:exchange_rate/cdata.dart';

var setMain1 = 16;
var setMain2 = 40;

class Cchange extends ChangeNotifier {
  var set1 = setMain1;
  var set2 = setMain2;
  void changeCoLe(nInput) {
    set1 = int.parse(cCountry[nInput].toString());
    notifyListeners();
  }

  void changeCoRi(nInput) {
    set2 = int.parse(cCountry[nInput].toString());
    notifyListeners();
  }
}
