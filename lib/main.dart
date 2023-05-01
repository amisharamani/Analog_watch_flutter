
import 'package:core_pr_2_final/home.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Home_page(),

        },
      )
  );
}