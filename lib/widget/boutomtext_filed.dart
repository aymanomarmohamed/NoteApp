import 'package:flutter/material.dart';
import 'package:noteapp2/widget/cons_color.dart';

class buttom_text_filed extends StatelessWidget {
  const buttom_text_filed({super.key, required this.ontap,this.islodind=false});
  final void Function()? ontap;
  final bool islodind;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
              color: kcolor
        ),
        child: Center(

          child: islodind ? const CircularProgressIndicator(
            color: Colors.white,

          ):

          const Text("Add",style: TextStyle(
              fontSize: 20,color: Colors.black),),
        ),

      ),
    );
  }
}
