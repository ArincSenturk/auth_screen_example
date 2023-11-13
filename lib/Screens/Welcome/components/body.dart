import 'package:auth_screen_example/Screens/Welcome/components/background.dart';
import 'package:auth_screen_example/components/rounded_button.dart';
import 'package:auth_screen_example/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         SizedBox(height: size.height *0.03,),
        Text("WELCOME TO EDU",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height *0.03,),
        SvgPicture.asset(
        "assets/icons/chat.svg",
         
        ),
        RoundedButton( text: "LOGIN",
        press: () {},
        ),
        RoundedButton( text: "SING UP",
        color: kPrimaryLightColor,
        textColor:  Colors.black,
        press: () {},
        )
        ]
        ),
        );
  }
  
 
}



