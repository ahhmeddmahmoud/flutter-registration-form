import 'package:flutter/material.dart';

class RegistrationAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegistrationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFF40349f),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
      ),
      title: Text(
        "Register",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}