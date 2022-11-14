// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../shared/themes.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey2Color,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: Image.asset(
            'assets/icon_coming_soon.png',
          ),
        ),
      ),
    );
  }
}
