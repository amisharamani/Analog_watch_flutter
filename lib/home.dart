
import 'package:flutter/material.dart';

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

      Align(alignment: Alignment.center,child: Text("${now.hour}:${now.minute}:${now.second} ",style:
      TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),),
      // Text("${timer()}"
          Container(
            alignment: Alignment.center,
           child:  SizedBox(
             child: CircularProgressIndicator(),
             height: 200.0,
             width: 200.0,
           ),
          )
        ],
      ),
    );
  }
}
