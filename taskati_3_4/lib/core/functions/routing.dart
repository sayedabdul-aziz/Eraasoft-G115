import 'package:flutter/material.dart';

void navigateTo(context, Widget newView) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => newView,
  ));
}

void navigateWithReplacment(context, Widget newView) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => newView,
  ));
}
