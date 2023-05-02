
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  int s=0;
  int m=0;
  int h=0;

  DateTime now = DateTime.now();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Watch"),
        actions: const [
          Icon(Icons.apps_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,

      ),
      body: Stack(
        children: [
          Container(
            height: 800,
            width: 400,
            child:
            Image.asset('assets/images/bg.jpg',
            fit: BoxFit.fill,
          ),
        ),

      Align(alignment: Alignment.topCenter,child: Text("${now.hour}:${now.minute}:${now.second} ",style:
      TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
      ),

      Container(
              alignment: Alignment.center,
          child :AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
          color: Colors.transparent,
          shape: BoxShape.circle),
          width: 250.0,
          isLive: true,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          showSecondHand: false,
          numberColor: Colors.black87,
          showNumbers: true,
          showAllNumbers: false,
          textScaleFactor: 1.4,
          showTicks: false,
          showDigitalClock: false,
          datetime: DateTime(2019, 1, 1, 9, 12, 15),
          ),
      ),
        ],
      ),
    );
  }
}
