import 'package:flutter/material.dart';
import 'package:noteapp2/widget/cons_color.dart';

class text_filed extends StatelessWidget {
  const text_filed({super.key,  this.Hint,  this.Maxline=1, this.onsaved, this.OnChange,  this.initialValue,});
final String ? Hint;
final  int Maxline;
final void Function(String?)? onsaved;
final void Function(String?)? OnChange;
  final String ? initialValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33,right: 16 , left: 16),

      child: TextFormField(
        initialValue: initialValue,
        onChanged: OnChange,
        onSaved: onsaved,
        validator: (value) {
          if(value?.isEmpty ?? true){
            return "the Field is required";

          }
          else
          {
            return null;
          }
        },
        maxLines: Maxline,
        decoration: InputDecoration(
          border:buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder:  buildBorder(Colors.lightBlueAccent),
          hintText: Hint,
          hintStyle: const TextStyle(color: kcolor,fontSize:17)

        )
        ),
      );

  }
}
OutlineInputBorder buildBorder([color])
{
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
  borderSide: BorderSide(color:color?? kcolor ));
}