import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp2/cubits/Notes/notess_cubit.dart';
import 'package:noteapp2/widget/AppBarCustum.dart';
import 'CardNotesListView.dart';

class badynotapp extends StatefulWidget {
  const badynotapp({super.key});

  @override
  State<badynotapp> createState() => _badynotappState();
}

class _badynotappState extends State<badynotapp> {
  @override
  void initState()
  {
    BlocProvider.of<NotessCubit>(context).FeetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16),
      child:  Column(
        children: [
          SizedBox(
            height: 40
          ),

          AppBarCustum(Title:"Note",IconAppBar2: Icons.search,),
          Expanded(child: CardNotesListView())        ],


      ),
    )
    ;
  }
}
