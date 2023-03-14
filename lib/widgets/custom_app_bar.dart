import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_now/consts/app_colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  String? title;

  CustomAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      title: Center(
        child: Text(
          title!,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              fontSize: 25,
              color: AppColor.subTitleColor),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: AppColor.titleColor,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
