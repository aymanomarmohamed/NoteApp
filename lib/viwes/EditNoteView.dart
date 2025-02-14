import 'package:flutter/material.dart';
import 'package:noteapp2/model/model.dart';
import '../widget/EditNoteBody1.dart';



class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.Note});
final model Note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditNoteBody(editnote: Note,)
    );
  }
}

