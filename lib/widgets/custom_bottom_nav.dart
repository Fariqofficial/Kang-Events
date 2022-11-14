// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kang_event/cubit/page_cubit.dart';
import '../shared/themes.dart';

class CustomNavigationBar extends StatelessWidget {
  final String imgUrl;
  final int index;

  const CustomNavigationBar({
    super.key,
    required this.index,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? secondaryColor
                  : transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Image.asset(
            imgUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? secondaryColor
                : transparentColor,
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
