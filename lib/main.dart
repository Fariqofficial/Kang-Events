// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kang_event/cubit/page_cubit.dart';
import 'package:kang_event/pages/choose_location.dart';
import 'package:kang_event/pages/detail_event.dart';
import 'package:kang_event/pages/home_page.dart';
import 'package:kang_event/pages/main_page.dart';
import 'package:kang_event/pages/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignUp(),
          '/choose-location': (context) => ChooseLocation(),
          '/home-page': (context) => HomePage(),
          '/detail-event': (context) => DetailEvent(),
          '/main-page': (context) => MainPage(),
        },
      ),
    );
  }
}
