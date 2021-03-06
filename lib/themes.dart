import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

const bgStoryColors = [
  const Color(0xFF151372),
  const Color(0xFF107197),
  const Color(0xFF194D88),
  const Color(0xFF08BAC7),
  const Color(0xFF000A33),

];
final Shader linearGradient = LinearGradient(
  colors: <Color>[ const Color(0xFFA30606),
  const Color(0xFF721099),
  const Color(0xFF961F29),
  const Color(0xFFDA7B0E),
  const Color(0xFF962173),],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors
          .black, //primary swatch mein sirf ek single color jaega like blue not blue[100] shades not allowed
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryIconTheme: IconThemeData(color: Vx.black),
      primaryTextTheme: TextTheme(headline6: TextStyle(color: Vx.black)),
      textTheme: TextTheme(headline6: TextStyle(color: Vx.black)),
      buttonColor: Colors.pink.shade200,
      cardColor: Vx.white,
      canvasColor: creamcolor,
      
      backgroundColor: Color(0xfff8faf8),
      accentColor: Colors.pink.shade200,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static int get newMethod => 900;
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
       primaryIconTheme: IconThemeData(color: Vx.white),
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamcolor,
      buttonColor: lightBluishcolor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6.copyWith(color: Colors.white)),
      ));

//color
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkBluishcolor = Color(0xff403b58);
  static Color lightBluishcolor = Vx.indigo800;
  static Color darkCreamcolor = Vx.gray900;
  static Color bgColor = Color(0xfff8faf8);
  
  
}
