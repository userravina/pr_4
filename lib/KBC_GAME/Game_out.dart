import 'package:flutter/material.dart';

class Wrong_Answer extends StatefulWidget {
  const Wrong_Answer({Key? key}) : super(key: key);

  @override
  State<Wrong_Answer> createState() => _Wrong_AnswerState();
}

class _Wrong_AnswerState extends State<Wrong_Answer> {
  @override
  Widget build(BuildContext context) {
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
              child: Text("oops !",
                  style: TextStyle(color: Color(0xffD4D4FF), fontSize: 25)),
            ),
            Text("Out game",
                style: TextStyle(color: Color(0xffC78640), fontSize: 25)),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushReplacementNamed(context, "/");
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: Center(
                    child: Text(
                      "Try Again",
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
