import 'package:flutter/material.dart';

import '../Constant/sizes_app.dart';

class BuildElevatedButton extends StatelessWidget {
  final double phonehight;
  final double tablethight;
  final double desktophight;
  final double borderRadios;
  final double width;
  final Color backgroundColor;
  final Color colorText;
  final VoidCallback onPressed;
  final String text;
  final String fontFamily;
  final double fontSize;
  const BuildElevatedButton({
    super.key,
    required this.phonehight,
    required this.tablethight,
    required this.desktophight,
    required this.borderRadios,
    required this.backgroundColor,
    required this.colorText,
    required this.onPressed,
    required this.text,
    required this.fontFamily,
    required this.width, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
            MediaQuery.of(context).size.width / width,
            Appsizes(context, phonehight, tablethight, desktophight)
                .toDouble()),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadios),
        ),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
          fontFamily: fontFamily,
          fontSize:fontSize,
        ),
      ),
    );
  }
}
