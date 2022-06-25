import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double spacing;
  final double height;
  final Color color;
  final TextAlign align;
  final FontWeight weight;
  final TextDirection? textdirection;
  final TextOverflow? overflow;
  const CustomText({
    required this.text,
    this.fontSize,
    this.spacing = 0,
    this.height = 1,
    this.color = Colors.black,
    this.align = TextAlign.center,
    this.weight = FontWeight.normal,
    this.overflow,
    this.textdirection,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow ?? TextOverflow.ellipsis,
      textDirection: textdirection ?? TextDirection.ltr,
      textAlign: align,
      style: GoogleFonts.nunito(
        color: color,
        fontSize: fontSize ,
        fontWeight: weight,
        letterSpacing: spacing,
        height: height,
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final String label;
  final Function() action;
  Color? color;
  Color? textColor;
  double? width;
  CustomBtn({
    required this.label,
    required this.action,
    this.color,
    this.width,
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: action,
      splashColor: AppColors.kPrimaryLight,
      color: color ?? Colors.white,
      elevation: 0,
      minWidth: width,
      child: CustomText(
        text: label.toUpperCase(),
        color: textColor ?? AppColors.kPrimaryDark,
        weight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}

class AppColors {
  static Color kPrimaryColor = Color(0xFF4fc1b3);
  static Color kSecondaryColor = Color(0xFFf3f5f5);
  static Color kPrimaryLight = Color.fromARGB(255, 142, 221, 211);
  static Color kPrimaryDark = Color(0xFF1f302d);
  static Color red = Color(0xFFf2535b);
}

AppBar AppBar_eng({
  bool showBackArrow = false,
  List<Widget>? actions,
  required String title,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: (showBackArrow)
        ? IconButton(
      onPressed: () {

      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 24,
      ),
      color: AppColors.kPrimaryDark,
      splashRadius: 1,
    )
        : null,
    elevation: 0,
    backgroundColor: Colors.white,
    title: CustomText(
      text: title,
      color: AppColors.kPrimaryDark,
      fontSize: 22,
      weight: FontWeight.w700,
    ),
    actions: (actions == null) ? null : actions,
  );
}

