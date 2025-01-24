import 'package:flutter/material.dart';

class JPButton extends StatelessWidget {
  const JPButton({
    required this.buttonheight,
    required this.buttonwidth,
    required this.text,
    required this.textcolor,
    required this.fontsize,
    required this.fontweight,
    required this.onpress,
    super.key,
  });
  final String text;
  final Color textcolor;
  final double? fontsize;
  final FontWeight fontweight;
  final VoidCallback onpress;
  final double buttonheight;
  final double buttonwidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child: TextButton(
        onPressed: onpress,
        style: ButtonStyle(),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromRGBO(234, 113, 197, 0.5),
                  blurRadius: 9,
                  spreadRadius: 0,
                  offset: Offset(0, 3)),
              BoxShadow(
                  color: Color.fromRGBO(147, 117, 134, 0.24),
                  blurRadius: 9,
                  spreadRadius: 0,
                  offset: Offset(0, -3)),
            ],
            border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.3)),
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
              center: Alignment.bottomRight,
              radius: 5,
              colors: [
                Color.fromRGBO(246, 158, 163, 1),
                Color.fromRGBO(233, 112, 196, 1)
              ],
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: fontsize,
              fontWeight: fontweight,
            ),
          ),
        ),
      ),
    );
  }
}
