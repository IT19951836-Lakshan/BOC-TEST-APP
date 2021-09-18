import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testboc/IT19951836/palatte.dart';
import 'widgets/background-image.dart';
import 'widgets/text-input.dart';
import 'widgets/password-input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      TextInput(
                        icon: FontAwesomeIcons.user,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),

                      SizedBox(
                        height: 18,
                      ),

                      PasswordInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Password',
                        inputAction: TextInputAction.next,
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

