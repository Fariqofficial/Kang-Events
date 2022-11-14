// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kang_event/widgets/custom_button.dart';
import 'package:kang_event/widgets/mentor_item.dart';
import '../shared/themes.dart';

class DetailEvent extends StatelessWidget {
  const DetailEvent({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_product_management.png',
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.chevron_left,
                          color: blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      //Design container dengan borderRadius
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 350),
            ),
            //Desgin container untuk konten
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Management: Marketing Growth',
                              style: blackTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 47,
                            height: 24,
                            margin: EdgeInsets.only(right: 4),
                            child: Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            '4.9',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Acara yang dikhususkan untuk belajar UX design sprint dalam membangun app yang dapat membantu masyarakat.',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Tujuan utama ketika program selesai maka kita dapat memiliki portfolio.',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          MentorItem(
                            imageUrl: 'assets/img_mentor5.png',
                          ),
                          MentorItem(
                            imageUrl: 'assets/img_mentor6.png',
                          ),
                          MentorItem(
                            imageUrl: 'assets/img_mentor4.png',
                          ),
                          MentorItem(
                            imageUrl: 'assets/img_mentor7.png',
                          ),
                          MentorItem(
                            imageUrl: 'assets/img_mentor8.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rp. 350000',
                                style: blackTextStyle.copyWith(
                                  fontSize: 28,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                '/person',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          title: 'Buy Ticket',
                          onPressed: () {},
                          width: 180,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: grey2Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
