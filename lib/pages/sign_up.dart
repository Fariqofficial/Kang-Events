// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kang_event/shared/themes.dart';
import 'package:kang_event/widgets/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    //Header Title Section
    Widget titleHeader() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Explore Events. \n Gain New Knowledges.',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Image.asset('assets/icon_banner.png'),
            SizedBox(height: 50),
            Text(
              'Sign Up',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    //Full Name Input Section
    Widget fullnameInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 16,
          top: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: secondaryColor,
              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: secondaryColor),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/icon_user.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Email Input Section
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 16,
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: secondaryColor,
              decoration: InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: secondaryColor),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/icon_mail.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Interest Input Section
    Widget interestInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
          top: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: secondaryColor,
              decoration: InputDecoration(
                hintText: 'Choose Your Interest',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: secondaryColor),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/icon_heart.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.chevron_down,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    //Button Explore
    Widget buttonExplore() {
      return Column(
        children: [
          CustomButton(
            title: 'Explore Now',
            onPressed: () {
              Navigator.pushNamed(context, '/choose-location');
            },
          ),
          SizedBox(height: 50),
        ],
      );
    }

    return Scaffold(
      backgroundColor: grey2Color,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            titleHeader(),
            fullnameInput(),
            emailInput(),
            interestInput(),
            buttonExplore(),
          ],
        ),
      ),
    );
  }
}
