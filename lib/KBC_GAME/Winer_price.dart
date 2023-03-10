import 'package:flutter/material.dart';

class Crecte extends StatefulWidget {
  const Crecte({Key? key}) : super(key: key);

  @override
  State<Crecte> createState() => _CrecteState();
}

class _CrecteState extends State<Crecte> {
  List price = [
    1000,
    2000,
    5000,
    10000,
    20000,
    25000,
    50000,
    100000,
    250000,
    500000
  ];

  @override
  Widget build(BuildContext context) {
    int op = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/win.png",
              height: 150,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "Your Answer Is Correct",
                style: TextStyle(color: Color(0xffC78640), fontSize: 25),
              ),
            ),
            Text(
              "You Won ${price[op]}",
              style: TextStyle(color: Colors.amberAccent, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: InkWell(
                onTap: () {
                  print(op);
                  if (op < 9) {
                    Navigator.pushNamed(context, "start");
                  } else {
                    Navigator.pushNamed(context, "finish");
                  }
                },
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Color(0xffD6D6D6), fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
