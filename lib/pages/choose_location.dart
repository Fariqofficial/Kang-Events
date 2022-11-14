// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kang_event/widgets/custom_button.dart';
import 'package:kang_event/widgets/item_location.dart';
import '../shared/themes.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({super.key});

  @override
  Widget build(BuildContext context) {
    Widget contentHeader() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Choose Location',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: Center(
                child: Text(
                  'Every place has their own lorem ipsum \n so you will experience diffferent',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    cursorColor: secondaryColor,
                    decoration: InputDecoration(
                      hintText: 'Search by city',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: secondaryColor),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      );
    }

    Widget contentTitleViewAll() {
      return Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Most Popular',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Based on participants',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: secondaryColor,
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget contentLocation() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 155),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemLocation(
                    region: 'South East',
                    events: 477,
                    asset: 'assets/image1.png',
                  ),
                  SizedBox(width: 15),
                  ItemLocation(
                    region: 'Central Bay',
                    events: 1893,
                    asset: 'assets/image2.png',
                  ),
                  SizedBox(width: 15),
                  ItemLocation(
                    region: 'Harbour',
                    events: 553,
                    asset: 'assets/image3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget contentTitleBottom() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Skip For Now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: grey1Color,
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 180,
              height: 60,
              margin: EdgeInsets.zero,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main-page');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: grey2Color,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            contentHeader(),
            contentTitleViewAll(),
            contentLocation(),
            contentTitleBottom(),
          ],
        ),
      ),
    );
  }
}
