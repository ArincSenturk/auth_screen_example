import 'package:auth_screen_example/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, 
  textColor;
  
  const RoundedButton({
    super.key,
  
   required this.text, 
   required this.press, 
   this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width *0.8,
      height: size.width *0.2,
      child: Padding(
        padding:EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color,
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Yuvarlaklık derecesi
              ),) ,
        onPressed: press,
        child: Text(text,
        style: TextStyle(color:textColor),
        )
        ),
      ),
    );
  }
}
