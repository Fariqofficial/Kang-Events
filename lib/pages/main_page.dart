// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kang_event/cubit/page_cubit.dart';
import 'package:kang_event/pages/history_page.dart';
import 'package:kang_event/pages/home_page.dart';
import 'package:kang_event/pages/setting_page.dart';
import 'package:kang_event/pages/wishlist_page.dart';
import 'package:kang_event/widgets/custom_bottom_nav.dart';
import '../shared/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return WishlistPage();
        case 2:
          return HistoryPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigationBar(
                index: 0,
                imgUrl: 'assets/ic_globe.png',
              ),
              CustomNavigationBar(
                index: 1,
                imgUrl: 'assets/ic_heart.png',
              ),
              CustomNavigationBar(
                index: 2,
                imgUrl: 'assets/ic_history.png',
              ),
              CustomNavigationBar(
                index: 3,
                imgUrl: 'assets/ic_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: grey2Color,
          body: Stack(
            children: [
              buildContent(state),
              bottomNavBar(),
            ],
          ),
        );
      },
    );
  }
}
