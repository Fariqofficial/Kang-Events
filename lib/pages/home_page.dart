// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kang_event/widgets/item_interest_event.dart';
import 'package:kang_event/widgets/item_new_events.dart';
import '../shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nearby',
                    style: greyTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Central Bay',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                    //A
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 61,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/user.png',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget contentNewEvent() {
      return Container(
        margin: EdgeInsets.only(
          top: 29,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Event',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemNewEvent(
                          name: 'Build a Website',
                          date: 'Apr 12',
                          time: '09:00 AM',
                          assets: 'assets/image_build_web.png',
                          price: 350000,
                        ),
                        SizedBox(width: 15),
                        ItemNewEvent(
                          name: 'Design Sprint Kyrro',
                          date: 'Jun 22',
                          time: '09:00 AM',
                          assets: 'assets/image_design_sprint.png',
                          price: 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget contentInterestEvent() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Interest',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ItemInterestEvent(
                          asset: 'assets/img_intro_kaggle.png',
                          name: 'Introduction Kaggle',
                          date: 'Apr 12',
                          time: '09:00 AM',
                          price: 50000,
                          rating: 4.9,
                        ),
                        ItemInterestEvent(
                          asset: 'assets/img_testing.png',
                          name: 'Usability Testing',
                          date: 'Aug 23',
                          time: '11:00 AM',
                          price: 65000,
                          rating: 4.7,
                        ),
                        ItemInterestEvent(
                          asset: 'assets/img_product_management.png',
                          name: 'Product Management',
                          date: 'Jun 5',
                          time: '02:00 PM',
                          price: 35000,
                          rating: 4.6,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 75),
          ],
        ),
      );
    }

    // Widget bottomNavBar() {
    //   return Align(
    //     alignment: Alignment.bottomCenter,
    //     child: Container(
    //       margin: EdgeInsets.only(
    //         top: 12,
    //       ),
    //       width: double.infinity,
    //       height: 70,
    //       decoration: BoxDecoration(
    //         color: Color(0XFF7A7892),
    //         borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(15),
    //           topRight: Radius.circular(15),
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      backgroundColor: grey2Color,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            contentNewEvent(),
            contentInterestEvent(),
          ],
        ),
      ),
      // bottomNavigationBar: bottomNavBar(),
    );
  }
}
