import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp2/model/model.dart';
import 'package:noteapp2/widget/Text_filed.dart';
import '../cubits/Notes/notess_cubit.dart';
import 'AppBarCustum.dart';
import 'Edite_color.dart';


class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.editnote,});
  final model editnote;


  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {


   String ?  titile ,contect;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
          children: [
          SizedBox(
          height: 40),
      AppBarCustum(Title: "Edit Note",IconAppBar2: Icons.check,OnPressed: () {
         widget.editnote.title =titile ?? widget.editnote.title;
         widget.editnote.subtitle =contect ?? widget.editnote.subtitle;
         widget.editnote.save();
         BlocProvider.of<NotessCubit>(context).FeetchAllNotes();
         Navigator.pop(context);
      },),
      text_filed(initialValue:widget.editnote.title ,
      OnChange: (value) {
        titile= value;
      },)
      ,
      SizedBox(
      height: 20,
      ),
      text_filed(initialValue:widget.editnote.subtitle,Maxline: 5,OnChange: (value) {
    contect= value;}
      ),
      SizedBox(
      height: 20,
      ),
           Editcolorlist(noteEdit: widget.editnote),



          ],

      ),
    );
  }
}
