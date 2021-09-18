import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testboc/IT19951836/palatte.dart';
import 'widgets/background-image.dart';
import '';

void main() =>runApp(MaterialApp(
  home: Login() ,
  debugShowCheckedModeBanner: false,
));

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Center(
                    child: Image(
                        image:AssetImage('assets/logo.png')
                    ),
                  ),

                ),
                Padding(
                  padding:EdgeInsets.fromLTRB(10.0,0.0, 280.0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 24.0
                      ) ,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:EdgeInsets.fromLTRB(10.0,0.0, 184.0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Please sign in to continue.',
                        style:TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 14.0,
                            color:Colors.blueGrey
                        ) ,
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 3.0,
                            color: Colors.amberAccent
                          ),
                          borderRadius: BorderRadius.circular(14),
                            boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 15),
                            border: InputBorder.none,
                            hintText: 'Email',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            hintStyle: TBodyText
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 18,
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 3.0,
                                color: Colors.amberAccent
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 15),
                              border: InputBorder.none,
                              hintText: 'Password',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.password,
                                  color: Colors.grey,
                                ),
                              ),
                              hintStyle: TBodyText
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 18,
                ),



              ],
            ),
          ),
        ),
      ],
    );
  }
}


