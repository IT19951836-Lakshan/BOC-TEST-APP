import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/background-image.dart';
import 'widgets/text-input.dart';
import 'widgets/password-input.dart';
import 'widgets/Rounded-Button.dart';
import 'widgets/clickable-text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,

          body: SingleChildScrollView(
            child: SafeArea(
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

                  //text filed
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

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RoundedButton(
                        buttonText: 'Sign In',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 20),
                        child: Text(
                            "Forget Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:55,vertical:20),
                        child: ClickableText(),
                      ),
                      FloatingActionButton(
                          onPressed: (){},
                          backgroundColor: Colors.amberAccent,
                          child: Icon(
                            FontAwesomeIcons.phoneAlt,
                            color: Colors.black,
                          ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

