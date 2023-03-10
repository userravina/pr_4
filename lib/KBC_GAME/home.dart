import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List color = [
  Colors.purpleAccent,
  Colors.blue.shade800,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.lightBlueAccent,
  Colors.red,
  Colors.indigo,
  Colors.deepOrangeAccent,
  Colors.deepOrange,
];

List qaList = [
  "1. In the Film 'oh My God' Kanji  Bhai filed a case against whom for the damage of his shop due to an  earthquake ?",
  "2. What is the new name of the Hyderabad franchise that Would replace Deccan Charges in IPL6 ?",
  "3. In india,under which Union Ministry does the 'Rajbhasha Vibhag' function ?",
  "4. According toa proverb,what is said to be 'the mother of invention' ?",
  '5.Which actress got married to sidharth roy kapur in 2012 ? ',
  "6. To whom did ravindranath tagore dedicate his book 'visva parichay' written on science ? ",
  '7. Which of these is a chemical elemical present in the priodic table ?',
  '8. Which of these is not a work of kalidas ?',
  '9. According to the devi,bhagavata,from the tear of which god is the rudraksha tree believed to have been created ?',
  "10. which of these names means 'goldlike' ? ",
];
List optA = [
  "A. Bharat Mata",
  "A. Sun Chargers",
  "A. Home Affairs",
  "A. Society",
  "A. Prachi Desai",
  "A. C v raman",
  "A. Eurocium",
  "A. Raghuvamsham",
  "A. Vishnu",
  "A. Sonakshi",
];
List optB = [
  "B. Parliament",
  "B. Nizam Jyothi",
  "B. HRD",
  "B. Problem",
  "B. Lisa Ray",
  "B. Satyendra nath Bose",
  "B. Asiacium",
  "B. Kadambari",
  "B. Shiva",
  "B. Deepika"
];
List optC = [
  "C. Mumbai City",
  "C. Andhra Aces",
  "C. Culture",
  "C. Science",
  "C. Vidya Balan",
  "C. P c royn",
  "C. Americium",
  "C. Vikramorvasiyam",
  "C. Krishna",
  "C. Sonam",
];
List optD = [
  "D. Bhagwan",
  "D. Sun risers Hyderabad",
  "D. Law & Justice",
  "D. Necessity",
      "D. Sushmita sen",
  "D. Jagdish Chandra Bose",
  "D. Africium",
  "D. Meghadutam",
  "D. Kamadeva",
  "D. Katrina",
];
List ansList = [
  "D",
  "D",
  "A",
  "D",
  "C",
  "B",
  "C",
  "B",
  "B",
  "C",
];

List userList = [];

int i = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                height: 350,
                color: color[i],
                alignment: Alignment.center,
                child: Text("${qaList[i]}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
              )),
              Expanded(
                  child: Container(
                      height: 250,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                      set("A");
                                    },
                                    child: Button(optA[i])),
                                InkWell(
                                    onTap: () {
                                      set("B");
                                    },
                                    child: Button(optB[i])),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                      set("C");
                                    },
                                    child: Button(optC[i])),
                                InkWell(
                                    onTap: () {
                                      set("D");
                                    },
                                    child: Button(optD[i])),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ))),
            ],
          ),
        ));
  }

  Widget Button(String data) {
    return Container(
      height: 40,
      width: 225,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Text(
        "$data",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  void set(String opt) {
    setState(() {
      if (i < qaList.length)
      {

        userList.add(opt);
      }
      {
        if (userList[i] == ansList[i])
        {
          Navigator.pushNamed(context, "second", arguments: i);
          if (i < qaList.length - 1)
          {
            i++;
          }
        } else
        {
          Navigator.pushNamed(context, "three");

        }
      }
      print(userList);
    });
  }
}
