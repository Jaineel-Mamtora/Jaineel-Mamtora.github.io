import 'package:flutter/material.dart';

class HoverProvider extends ChangeNotifier {
  bool _isHovered = false;

  bool get isHovered => _isHovered;

  set isHovered(bool value) {
    _isHovered = value;
    notifyListeners();
  }
}
