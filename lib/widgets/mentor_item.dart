// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MentorItem extends StatelessWidget {
  final String imageUrl;

  const MentorItem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
