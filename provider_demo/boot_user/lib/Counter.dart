import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count;
  Counter(this._count);

  void add() {
    this._count++;
    notifyListeners();
  }

  get count => _count;
}