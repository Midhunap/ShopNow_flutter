import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_now/consts/app_colors.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? isResponsive;
  String? buttonText;
  ResponsiveButton({Key? key, this.width, this.isResponsive, this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white70,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.black26,
          ),
        ],
      ),
      child: Center(
        child: Text(
          buttonText!,
          style: GoogleFonts.lato(
              color: AppColor.titleColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
