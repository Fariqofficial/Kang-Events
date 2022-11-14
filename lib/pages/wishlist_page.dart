// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../shared/themes.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

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
