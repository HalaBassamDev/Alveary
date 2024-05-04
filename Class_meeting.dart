import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Meeting {
  final String title;
  Meeting({required this.title});
  String toString() => this.title;
}
