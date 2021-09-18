import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:350,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius:BorderRadius.circular(14),
          boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
      ),
      child: FlatButton(
        onPressed:() {} ,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

