import 'package:flutter/material.dart';
import 'package:noteapp2/widget/iconappbar.dart';

class AppBarCustum extends StatelessWidget {
  const AppBarCustum({super.key,required this.Title, required this.IconAppBar2, this.OnPressed});
final String Title;
final IconData IconAppBar2;
  final void Function()? OnPressed;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(Title,style: const TextStyle(
            fontSize: 24
        ),),
        const Spacer(),
         iconappbar(OnPressed: OnPressed,IconAppBar: IconAppBar2)
      ],
    );
  }
}
