import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/Notes/notess_cubit.dart';
import '../model/model.dart';
import 'NoteCard.dart';

class CardNotesListView extends StatelessWidget {
  const CardNotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotessCubit, NotessState>(
      builder: (context, state) {
        List<model>Notes=BlocProvider.of<NotessCubit>(context).NotesList!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            itemCount: Notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: NoteCard(NotesCards: Notes[index]),
              );
            },),
        );
      },
    );
  }
}
