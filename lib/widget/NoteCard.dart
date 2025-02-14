import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp2/cubits/Notes/notess_cubit.dart';
import 'package:noteapp2/model/model.dart';

import '../viwes/EditNoteView.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.NotesCards});
final model NotesCards;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) {
          return  EditNoteView(Note: NotesCards,);
        },));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16,left: 16,bottom: 16),
        decoration: BoxDecoration(
          color:Color(NotesCards.color!) ,
          borderRadius: BorderRadius.circular(16),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(NotesCards.title,style: const TextStyle(color: Colors.black,fontSize: 24),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 12),
                child: Text(NotesCards.subtitle,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 18)),
              ),
              trailing:IconButton(onPressed: (){
                NotesCards.delete();
                BlocProvider.of<NotessCubit>(context).FeetchAllNotes();
              },icon: Icon(FontAwesomeIcons.trash,color: Colors.black,)) ,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(NotesCards.data,style: TextStyle(color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}
