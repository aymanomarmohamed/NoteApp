import 'package:flutter/material.dart';

class iconappbar extends StatelessWidget {
  const iconappbar({super.key, required this.IconAppBar, this.OnPressed});
final IconData IconAppBar;
final void Function()? OnPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16)


      ),
      height: 44,
      width: 44,

      child:  IconButton(onPressed: OnPressed,
        icon: Icon(IconAppBar),iconSize: 23,
      ),
    );
  }
}
