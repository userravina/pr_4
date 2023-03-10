import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/win.png",
                height: 150, width: 150, fit: BoxFit.fill),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Congratulations",
            style: TextStyle(color: Color(0xffC78640), fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Game over",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow),
              child: Center(
                child: Text(
                  "Restart",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
