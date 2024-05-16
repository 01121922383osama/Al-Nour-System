import 'package:flutter/material.dart';

extension Navigations on BuildContext {
  void pop() => Navigator.of(this).pop();

  void push(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void pushAndRemoveUntil(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  void pushReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void pushNamed(String name) {
    Navigator.of(this).pushNamed(name);
  }

  void pushNamedAndRemoveUntil(String name) {
    Navigator.of(this).pushNamedAndRemoveUntil(name, (route) => false);
  }
}
