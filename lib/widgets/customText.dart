import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const CustomText(
      this.text, this.size, this.color, this.fontWeight, this.textAlign);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.elMessiri(
          textStyle:
              TextStyle(fontSize: size, color: color, fontWeight: fontWeight)),
      textAlign: textAlign,
    );
  }
}
