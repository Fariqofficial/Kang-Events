// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/themes.dart';

class ItemNewEvent extends StatelessWidget {
  final String name;
  final String date;
  final String time;
  final String assets;
  final int price;

  const ItemNewEvent({
    super.key,
    this.name = '',
    this.date = '',
    this.time = '',
    this.assets = '',
    this.price = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-event');
      },
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 220,
                  height: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 16),
                          width: 200,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                assets,
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                right: 8,
                              ),
                              width: 85,
                              height: 26,
                              decoration: BoxDecoration(
                                color: blackColor,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Rp.',
                                          style: whiteTextStyle.copyWith(
                                            fontWeight: medium,
                                          ),
                                        ),
                                        Text(
                                          price.toString(),
                                          style: whiteTextStyle.copyWith(
                                            fontWeight: medium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              date,
                                              style: grey2TextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: light,
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              '•',
                                              style: grey2TextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: light,
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              time,
                                              style: grey2TextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: light,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
