import 'dart:async';

import 'package:flutter/material.dart';
import './IT19951836/widgets/widgets.dart';

void main() =>runApp(MaterialApp(
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
));


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Stack(
     children: [
       Image.asset("assets/Splashscreen.jpg")
     ],
     
   ),
    );
  }
}






