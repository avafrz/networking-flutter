import 'package:flutter/material.dart';

class Favorites extends ChangeNotifier {
  final List<String> _favouritesList = [];

  List<String> get favouritesList => _favouritesList;

  add(String name) {
    _favouritesList.add(name);
    notifyListeners();
  }

  remove(String name) {
    _favouritesList.removeWhere((element) => element == name);
    notifyListeners();
  }
}
