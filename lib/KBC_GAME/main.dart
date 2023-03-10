import 'package:flutter/material.dart';
import 'package:pr_4/KBC_GAME/Winer_price.dart';
import 'package:pr_4/KBC_GAME/home.dart';
import 'package:pr_4/KBC_GAME/Start.dart';
import 'package:pr_4/KBC_GAME/finish.dart';
import 'package:pr_4/KBC_GAME/Game_out.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => First_Screen(),
        "start":(context) => HomeScreen(),
        "second":(context) => Crecte(),
        "three":(context) => Wrong_Answer(),
        "finish":(context) => Finish(),
      },
    ),
  );
}
