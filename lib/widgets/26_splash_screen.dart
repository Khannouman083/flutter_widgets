import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thirty_days_thirty_widgets/widgets/27_shimmer_effect.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>myShimmer()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash Screen", style: TextStyle(fontSize: 20),),),
    );
  }
}
